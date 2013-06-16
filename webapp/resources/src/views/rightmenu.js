define(function(require, exports, module) {
  var Backbone, MenuView, RightMenuView;

  Backbone = require('backbone');
  MenuView = require('src/views/menu');
  RightMenuView = Backbone.View.extend({
    tagName: 'div',
    className: 'menu',
    template: "<div></div>",
    initialize: function() {
      return this;
    },
    events: {
      "click": "animateToTop",
      "mouseleave": "show"
    },
    render: function() {
      this.$el.append(this.template({}));
      return this;
    }
  });
  return module.exports = RightMenuView;
});
