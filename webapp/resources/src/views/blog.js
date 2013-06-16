define(function(require, exports, module) {
  var Backbone, BlogView, IssueModel, tel;

  Backbone = require('backbone');
  tel = require('tpl/common/blog.tpl');
  IssueModel = require('src/models/issue');
  BlogView = Backbone.View.extend({
    tagName: 'article',
    className: 'blog',
    template: _.template(tel),
    initialize: function() {
      this.$toolbar = this.$el.find('.toolbar');
      _.bind(this.toggleContent, this);
      _.bind(this.getCommments, this);
      this.getCommments();
      this.listenTo(this.model, 'change', this.render);
      return this;
    },
    events: {
      "click .title": "toggleContent",
      "click .toolbar": "showContent"
    },
    render: function() {
      this.$el.attr('id', this.model.get('id'));
      this.$el.html(this.template(this.model.toJSON()));
      return this;
    },
    toggleContent: function(e) {
      if (this.model.get('show')) {
        return this.hideContent(e);
      } else {
        return this.showContent(e);
      }
    },
    showContent: function(e) {
      this.model.toggle();
      return false;
    },
    getCommments: function() {
      var model;

      model = this.model;
      return $.get(this.model.get('commentAPI'), function(data) {
        return model.set({
          commentNum: data.comments
        });
      });
    },
    hideContent: function(e) {
      this.model.toggle();
      return false;
    }
  });
  return module.exports = BlogView;
});
