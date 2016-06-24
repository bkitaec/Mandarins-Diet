/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'localDiskDb',
  tableName: 'lessons',

  // autoPK: false,
  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    }
  , title: {
      type: 'string',
      required: true
      // size: 250
    },
    content: {
      type: 'text',
      required: true
    },


    lock: function (cb) {
      this.status = 0;
      this.save(cb);
    },
    unlock: function (cb) {
      this.status = 1;
      this.save(cb);
    },
    toJSON: function() {
      var obj = this.toObject();
      // delete obj.code;
      return obj;
    }
  },

};

