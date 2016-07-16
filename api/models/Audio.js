/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'audio',

  // autoPK: false,
  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    }
    , category_id:{
      type: 'integer',
      required: true
    }
    , url: {
      type: 'string',
      required: true
      // size: 250
    },
    title: {
      type: 'string',
      required: true
    },


    toJSON: function() {
      var obj = this.toObject();
      // delete obj.code;
      return obj;
    }
  },

};

