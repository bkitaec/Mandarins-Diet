module.exports = {
/*  create: function(req,res){

    console.log('Query');
    console.log(req.params);
    QuizQuestion.create(req.params).exec(function(e, r){
      if(e){
        console.log(req.query);

      }
    })
    return res.ok();
  },*/

/*  update: function(req,res){

    console.log('Query');
    console.log(req.allParams());
    QuizQuestion.findOne({id: req.param('id')}).exec(function(e, question){
      if(e){
        console.log('error');
      }
      question.tags =  req.param('tags_arr').toString();
      question.question =  req.param('question');
      question.published =  req.param('published');
      question.answers =  req.param('answers');
      question.save(
        function(err){
          console.log(err); 
          return res.serverError();
        })
      return res.ok();
    })
  }*/

};
