module.exports = {
  add: function (req, res) {
    var lesson;

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
    console.log(req.param('content'));

    ApiService.send('/lessons', {}, function (answ) {
      if(!ControllerService.checkResponse(answ, res)) return;

      return res.view('lessons/list', {
        lists: answ.body
      });
    });

  },


};
