define(function(require, exports, module) {
  var AppView, Backbone, gobal, users;

  Backbone = require('backbone');
  gobal = require('../namespace');
  users = gobal.users;
  AppView = Backbone.View.extend({
    el: '#container',
    initialize: function() {
      this.$container = this.$el.find('.author');
      return this.listenTo(users, 'add', this.addOne);
    },
    events: {
      'click a': 'a'
    },
    render: function() {
      users.each(this.addOne, this);
      return this;
    },
    addOne: function(user) {
      var UserView, userView;

      UserView = require('./user');
      userView = new UserView({
        model: user
      });
      return this.$container.append(userView.render().el);
    }
  });
  return module.exports = AppView;
});
