define(function(require, exports, module) {
  var Backbone, UserModel, Users;

  Backbone = require('backbone');
  UserModel = require('../models/user');
  Users = Backbone.Collection.extend({
    model: UserModel
  });
  return module.exports = Users;
});
