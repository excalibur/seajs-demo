define(function(require, exports, module) {
  var Backbone, Organization;

  Backbone = require('backbone');
  Organization = Backbone.Conllection.extend({
    model: null
  });
  return module.exports = Organization;
});
