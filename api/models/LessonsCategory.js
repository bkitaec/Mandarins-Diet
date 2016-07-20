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
  },

};

