define(function(require, exports, module) {
  var Backbone, MenuView, li, tel;

  Backbone = require('backbone');
  tel = require('tpl/common/menu.tpl');
  li = '<li><a href="#<%=id%>"><%=title%></a></li>';
  MenuView = Backbone.View.extend({
    tagName: 'div',
    className: 'menu',
    template: _.template(tel),
    initialize: function() {
      _.bind(this.addOne, this);
      return this;
    },
    events: {
      "click a": "scrollTo"
    },
    render: function() {
      this.$el.append(this.template({}));
      this.$ul = this.$el.find('ul');
      return this;
    },
    scrollTo: function(e) {
      console.log(e.target);
      console.log($($(e.target).attr('href')).offset());
      $("html,body").animate({
        scrollTop: $($(e.target).attr('href')).offset().top - 90
      }, 1000);
      return false;
    },
    addOne: function(blog) {
      return this.$ul.append(_.template(li, blog.toJSON()));
    }
  });
  return module.exports = MenuView;
});
