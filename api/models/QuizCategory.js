/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'quiz_category',

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
    },
    desc: {
      type:"text",
    },
    published: {
      type: 'integer',
      defaultsTo: 0
    },
  },

};

