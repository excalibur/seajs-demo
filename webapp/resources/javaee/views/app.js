define(function(require, exports, module) {
  var AppView, Backbone, BlogView, MenuView, blogs, gobal;

  Backbone = require('backbone');
  gobal = require('../namespace');
  blogs = gobal.blogs;
  BlogView = require('src/views/blog');
  MenuView = require('src/views/menu');
  AppView = Backbone.View.extend({
    el: '#container',
    initialize: function() {
      this.$left = this.$el.children().first();
      this.$right = this.$el.children().last();
      this.$content = this.$left.children().first();
      _.bind(this.addOne, this);
      return this.render();
    },
    events: {
      '': ''
    },
    render: function() {
      this.addMenu();
      this.addAll();
      return this;
    },
    addMenu: function() {
      this.menuView = new MenuView();
      return this.$right.append(this.menuView.render().el);
    },
    addAll: function() {
      return blogs.each(this.addOne, this);
    },
    addOne: function(blog) {
      var blogView;

      blogView = new BlogView({
        model: blog
      });
      this.$content.append(blogView.render().el);
      return this.menuView.addOne(blog);
    }
  });
  return module.exports = AppView;
});
