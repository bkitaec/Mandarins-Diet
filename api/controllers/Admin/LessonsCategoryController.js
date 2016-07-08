module.exports = {
  add: function (req, res) {
    var category;

    var done = _.after(1, function() {
      return res.view('lessons/add', {
        lesson: lesson
      });

    });

    if(req.param('lesson_id')){
      Lessons.findOne({id:req.param('lesson_id') }).exec(function (err, record) {
        if(!ControllerService.checkDb(err, record, res)) return;
        lesson = record
        done();
      })
    }else{
      done();
    }
  },

  list: function (req, res) {
    var categorys;
    var done = _.after(1, function() {
      return res.view('lessons/category/list', {
        lists: categorys
      });
    });

    LessonsCategory.find(function (err, record) {
      if(!ControllerService.checkDb(err, record, res)) return;
      categorys = record
      done();
    })
  },


};
