/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
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
  , category_id:{
      type: 'integer',
      required: true
    }
  , title: {
      type: 'string',
      required: true
      // size: 250
    }
  , content: {
      type: 'text'
    },

    contents: {
      collection: 'lessonscontent',
      via: 'lesson_id'
    },

    toJSON: function() {
      var obj = this.toObject();
      // delete obj.code;
      return obj;
    }
  },

};

