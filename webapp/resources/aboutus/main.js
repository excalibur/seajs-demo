define(function(require) {
  var $, AppView, TopView, appView, toTopView, topView;

  $ = require('jquery');
  AppView = require('./views/app');
  appView = new AppView();
  appView.render();
  TopView = require('src/views/top.js');
  topView = new TopView();
  topView.render();
  toTopView = require('src/views/totop.js');
  return toTopView.render();
});
