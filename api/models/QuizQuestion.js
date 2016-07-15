/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'quiz_question',

  // autoPK: false,
  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    },
    question:{
      type: 'string',
      required: true
    },
    type: {
      type: 'string',
      defaultsTo:"radio"
    },
    published: {
      type: 'integer',
      defaultsTo: 1
    },
    tags: {
      type: 'string',
    },
    answers: {
      collection: 'quizanswer',
      via: 'question_id'
    },

    toJSON: function() {
      var obj = this.toObject();
      if(obj.tags){
        switch (obj.tags.lenght){
          case 0:
            obj.tags_arr = [];
            break;
          case 1:
            obj.tags_arr = [0+parseInt(obj.tags, 10)]
          default:
            obj.tags_arr = obj.tags.split(',').map(function(t){return parseInt(t)});
            break
        }
      }
      return obj;
    }

  },

};

