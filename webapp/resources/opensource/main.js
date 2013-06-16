define(function(require) {
  var $, TopView, toTopView, topView;

  $ = require('jquery');
  TopView = require('src/views/top.js');
  topView = new TopView();
  topView.render();
  toTopView = require('src/views/totop.js');
  return toTopView.render();
});
