module.exports = {
  view: function (req, res) {
    var lesson;

    var done = _.after(1, function() {
      return res.view('lessons/view', {
        lesson: lesson,
        layout: 'layout'
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
};
