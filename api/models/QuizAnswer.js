/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'quiz_answer',

  // autoPK: false,
  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    },
    question_id: {
      type: 'integer',
      model: 'quizquestion'
    },
    answer: {
      type:"string",
      required: true
    },
    correct: {
      type: 'integer',
    },
    order: {
      type: 'integer',
    }
  },

};

