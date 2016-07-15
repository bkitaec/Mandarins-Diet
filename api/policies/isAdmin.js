/**
 * Created by user on 14/11/2014.
 */

module.exports = function(req, res, next) {

    if (req.headers.authorization) {
      return next();
    }
    // User is allowed, proceed to the next policy,
    // or if this is the last policy, the controller
    if (!req.session.user) {
        // return res.status('401');
        return res.forbidden('You are not logged in.');
    }

    // if (req.session.user.role !== 'admin'){
    //     return res.forbidden('You are not permitted to perform this action.');
    // }

    return next();
};
