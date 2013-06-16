define(function(require, exports, module) {
  var Backbone, BlogModel, BlogsCollection;

  Backbone = require('backbone');
  BlogModel = require('../models/blog');
  BlogsCollection = Backbone.Collection.extend({
    model: BlogModel
  });
  return module.exports = BlogsCollection;
});
