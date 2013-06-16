define(function(require, exports, module) {
  var Backbone, UserModel;

  Backbone = require('backbone');
  UserModel = Backbone.Model.extend({
    defaults: {
      url: "",
      html_url: "",
      issue_url: "",
      id: 19241960,
      user: {},
      created_at: "",
      updated_at: "",
      body: ""
    }
  });
  return module.exports = UserModel;
});
