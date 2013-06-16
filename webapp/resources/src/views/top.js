define(function(require, exports, module) {
  var Backbone, TopView, gobal, tpl;

  Backbone = require('backbone');
  gobal = require('namespace');
  tpl = require('tpl/common/top.tpl');
  TopView = Backbone.View.extend({
    tagName: 'div',
    className: 'navbar navbar-fixed-top animated fadeInLeft',
    template: _.template(tpl),
    events: {
      'click a': 'a'
    },
    render: function() {
      this.$el.append(this.template(gobal.header));
      $('body').append(this.$el);
      return this;
    }
  });
  return module.exports = TopView;
});
