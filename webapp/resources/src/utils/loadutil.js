define(function(require) {
  var Modernizr;

  Modernizr = require('modernizr');
  return Modernizr.load({
    test: Modernizr.mq('only all'),
    nope: 'js/a.js'
  });
});
