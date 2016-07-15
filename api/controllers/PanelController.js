module.exports = {
  index: function (req, res) {
      return res.view('panel',{
        layout: null
      });
  },
};
