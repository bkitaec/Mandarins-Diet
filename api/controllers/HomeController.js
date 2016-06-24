module.exports = {
  home: function (req, res) {
    Lessons.find(function (err, lessons) {
      // if(!ControllerService.checkDb(err, record, res)) return;
      // console.log(lessons);
      return res.view('homepage', {lessons: lessons});
    });

  },
};
