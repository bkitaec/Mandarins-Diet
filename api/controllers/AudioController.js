/**
 * AudioController
 *
 * @description :: Server-side logic for managing Audios
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var today = '' + new Date().getFullYear() + '' + new Date().getMonth() + '' + new Date().getDate()
    , filename;
function safeFilename(name) {
  name = name.replace(/ /g, '-');
  name = name.replace(/[^A-Za-z0-9-_\.]/g, '');
  name = name.replace(/\.+/g, '.');
  name = name.replace(/-+/g, '-');
  name = name.replace(/_+/g, '_');
  return name;
}


module.exports = {
  upload: function  (req, res) {
    req.file('file').upload({
      dirname: '../../assets/files/audio/' + today,
      saveAs: function(file, cb) {
        filename = safeFilename(file.filename)
        cb(null, filename);
      }
    }, function (err, files) {
      if (err)
        return res.serverError(err);
      console.log(filename);
      return res.json({
        message: files.length + ' file(s) uploaded successfully!',
        files: files,
        path: '/files/audio/' +today + '/' + filename,
      });
    });
  }
};

