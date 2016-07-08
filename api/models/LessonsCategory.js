/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'lessons_category',

  // autoPK: false,
  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    }
  , name: {
      type: 'string',
      required: true
      // size: 250
    },
    lang: {
      type:"string",
      enum:['ru','en','cn'],
      defaultsTo:"ru" //could be admin, normal
    },
    order: {
      type: 'integer',
      defaultsTo: 0
    },


    lessons: {
      collection: 'lessons',
      via: 'category_id'
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

