module.exports = {
    checkResponse: function (response, res) {
        if (response.error) {
            console.log("ERR [ApiService]: " + response.error);
            if(response.status == 401)
                return res.redirect('/login');
            else
                res.negotiate(response);
            return false;
        }
        //for debuging
        if(response.body) {
            // console.log(response.body);
        }
        return true;
    },

  checkDb: function (err, record, res) {
    if (err) {
      // console.log(response.error);
      console.log("ERR [DB]: " + err);
      res.negotiate(err);
      return false;
    }
    if(!record){
      res.notFound();
      return false;
    }
    return true;
  }

};
