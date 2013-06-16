define(function(require, exports, module) {
  var Backbone, UserModel;

  Backbone = require('backbone');
  UserModel = Backbone.Model.extend({
    defaults: {
      gravatar_id: '',
      type: '',
      name: '',
      company: '',
      blog: '',
      location: '',
      email: '',
      hireable: true,
      bio: '',
      intro: '',
      myUrl: ''
    }
  });
  return module.exports = UserModel;
});
