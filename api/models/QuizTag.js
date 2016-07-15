/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'quiz_tag',

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
    published: {
      type: 'integer',
      defaultsTo: 0
    },

  },

};

