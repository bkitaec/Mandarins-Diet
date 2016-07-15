/**
 * Device.js
 *
 * @description :: Device model.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  connection: 'devMysqlServer',
  tableName: 'quiz',

  // autoPK: false,
  autoCreatedAt: true,
  autoUpdatedAt: true,

  attributes: {
    id:{
      type: 'integer',
      primaryKey: true,
      autoIncrement: true
    },
    title: {
      type:"string",
      required: true
    },
    desc: {
      type:"text"
    },
    category_id: {
      type: 'integer',
      required: true
    },
    order: {
      type:"string"
    },
    published: {
      type: 'integer',
      defaultsTo: 1
    },
    questions: {
      type:"string"
    },

    toJSON: function() {
      var obj = this.toObject();
      if(obj.questions){
        switch (obj.questions.lenght){
          case 0:
            obj.questions_arr = [];
            break;
          case 1:
            obj.questions_arr = [parseInt(obj.questions, 10)]
          default:
            obj.questions_arr = obj.questions.split(',').map(function(t){return parseInt(t)});
            break
        }
      }
      return obj;
    }
  },

};

