define(function(require, exports, module) {
  var Backbone, UserView, tel;

  Backbone = require('backbone');
  tel = require('tpl/common/user.tpl');
  UserView = Backbone.View.extend({
    tagName: 'li',
    template: _.template(tel),
    initialize: function() {
      return this;
    },
    events: {
      "click .title": "toggleContent",
      "click .toolbar": "showContent"
    },
    render: function() {
      console.log('11');
      this.$el.html(this.template(this.model.toJSON()));
      this.$('.cricle-img').attr('style', 'background-image:url(https://secure.gravatar.com/avatar/' + this.model.get('gravatar_id') + '?s=420&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png);');
      return this;
    }
  });
  return module.exports = UserView;
});
