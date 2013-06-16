define(function(require, exports, module) {
  var Backbone, Workspace, urlutil;

  Backbone = require('backbone');
  urlutil = require('src/utils/urlutil.js');
  Workspace = Backbone.Router.extend({
    initialize: function() {
      return this.container = $('#container');
    },
    routes: {
      'webfrontend': 'webfrontend',
      'javaee': 'javaee',
      'opensource': 'opensource',
      'otherresource': 'otherresource',
      'aboutus': 'aboutus',
      '*actions': 'index'
    },
    index: function() {
      console.log('index');
      this.hideView();
      this.view = require('../views/app.js');
      return this.showView();
    },
    webfrontend: function() {
      console.log('webfrontend');
      this.hideView();
      this.view = require('../views/webfrontend.js');
      return this.showView();
    },
    javaee: function() {
      console.log('javaee');
      this.hideView();
      this.view = require('../views/javaee.js');
      return this.showView();
    },
    opensource: function() {
      console.log('opensource');
      this.hideView();
      this.view = require('../views/opensource.js');
      return this.showView();
    },
    otherresource: function() {
      console.log('otherresource');
      this.hideView();
      this.view = require('../views/otherresource.js');
      return this.showView();
    },
    aboutus: function() {
      console.log('aboutus');
      this.hideView();
      this.view = require('../views/aboutus.js');
      return this.showView();
    },
    hideView: function() {
      if (this.view !== void 0) {
        return this.container.empty();
      } else {

      }
    },
    showView: function() {
      this.container.addClass('fadeInLeft');
      this.container.append(this.view.render().el);
      return setTimeout("$('#container').removeClass('fadeInLeft');", 500);
    }
  });
  return module.exports = Workspace;
});
