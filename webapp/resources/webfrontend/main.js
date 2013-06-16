define(function(require) {
  var $, AppView, TopView, toTopView, topView;

  $ = require('jquery');
  AppView = require('./views/app.js');
  new AppView();
  TopView = require('src/views/top.js');
  topView = new TopView();
  topView.render();
  toTopView = require('src/views/totop.js');
  toTopView.render();
  require('prettify');
  return prettyPrint();
});
