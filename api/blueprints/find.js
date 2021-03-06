'use strict';

/**
 * Adds the X-Total-Count Header to REST calls to support pagination in ng-admin
 */

/**
 * Module dependencies
 */
var actionUtil = require('sails/lib/hooks/blueprints/actionUtil');
var _ = require('lodash');
var async = require('async');

/**
 * Find Records
 *
 *  get   /:modelIdentity
 *   *    /:modelIdentity/find
 *
 * An API call to find and return model instances from the data adapter
 * using the specified criteria.  If an id was specified, just the instance
 * with that unique id will be returned.
 *
 * Optional:
 * @param {Object} where       - the find criteria (passed directly to the ORM)
 * @param {Integer} limit      - the maximum number of records to send back (useful for pagination)
 * @param {Integer} skip       - the number of records to skip (useful for pagination)
 * @param {String} sort        - the order of returned records, e.g. `name ASC` or `age DESC`
 * @param {String} callback - default jsonp callback param (i.e. the name of the js function returned)
 */

module.exports = function findRecords(req, res) {

  // Look up the model
  var Model = actionUtil.parseModel(req);

  // Lookup for records that match the specified criteria
  var queryData = Model.find()
    .where( parseNgAdminFilter(actionUtil.parseCriteria(req)) )
    .limit( actionUtil.parseLimit(req) )
    .skip( actionUtil.parseSkip(req) );

  var sort = actionUtil.parseSort(req);
  if(
      sort != 'undefined undefined'
        &&
      sort != 'id DESC'
  ) {
    queryData.sort(actionUtil.parseSort(req));
  }

  queryData = actionUtil.populateEach(queryData, req);

  var queryCount = Model.count().where(actionUtil.parseCriteria(req));

  // Expose header to the client
  res.set('Access-Control-Expose-Headers', 'X-Total-Count');

  async.parallel(
    { data: getData, count: getTotalCount },
    function (err, results) {
      res.set('X-Total-Count', results.count);
      res.ok(results.data);
    }
  );

  function getTotalCount(cb) {
    queryCount.exec(function (err, count) {
      cb(null, count);
    });
  }

  function getData(cb) {
    queryData.exec(function found(err, matchingRecords) {
      if (err) return res.serverError(err);
      // Only `.watch()` for new instances of the model if
      // `autoWatch` is enabled.
      if (req._sails.hooks.pubsub && req.isSocket) {
        Model.subscribe(req, matchingRecords);
        if (req.options.autoWatch) { Model.watch(req); }
        // Also subscribe to instances of all associated models
        _.each(matchingRecords, function (record) {
          actionUtil.subscribeDeep(req, record);
        });
      }

      cb(null, matchingRecords);
    });
  }

  function parseNgAdminFilter(req){
    if(req._filters){
      if(JSON.parse(req._filters).category_id){
        return JSON.parse(req._filters);
      }else if(JSON.parse(req._filters).q){
        return {title: {like: '%'+JSON.parse(req._filters).q+'%'}};
      }
    }
    return req;
  }

};
