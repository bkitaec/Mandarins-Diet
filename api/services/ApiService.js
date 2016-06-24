module.exports = {

    send: function(url, options, cb) {
        var unirest = require("unirest");

        url = sails.config.appUrl + url
        console.log(url)
        var req = unirest("GET", url);

        // if (options.body) {
        //     if (_.size(options.body) > 0){
        //         // if(options.body.deviceId)
        //         //     options.body.deviceId = _.parseInt(options.body.deviceId);
        //         if(options.json){
        //             req.send(JSON.stringify(options.body))
        //         }
        //         else
        //             req.form(options.body);
        //     }
        // }

        req.end(function (res) {
          cb(res)
        });

    },

};
