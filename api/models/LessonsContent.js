/**
 * LessonsContent.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'lessons_content',

  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    },
    lesson_id: {
      type: 'integer',
      model: 'lessons'
    },
    content: {
      type:"text"
    },
    audio: {
      type:"string"
    },
  },

};

