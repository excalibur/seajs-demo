define(function(require, exports, module) {
  var Backbone, ToTop, ToTopView, toTop;

  Backbone = require('backbone');
  require('easing');
  ToTop = Backbone.Model.extend({
    defaults: {
      text: 'To Top',
      min: 200,
      inDelay: 600,
      outDelay: 400,
      containerClass: 'toTop',
      containerHoverClass: 'totop-border',
      iClass: 'icon-angle-up',
      scrollSpeed: 1200,
      easingType: 'easeOutQuart'
    }
  });
  ToTopView = Backbone.View.extend({
    tagName: 'a',
    template: '<span><p></p><i></i></span>',
    initialize: function(options) {
      this.$template = $(this.template);
      this.model.set(options);
      _.bindAll(this, 'render', 'animateToTop', 'scroll');
      this.$window = $(window);
      this.$window.scroll(this.scroll);
      return this;
    },
    events: {
      "click": "animateToTop",
      "mouseleave": "show"
    },
    render: function(options) {
      this.model.set(options);
      this.$el.append(this.$template);
      this.$el.addClass(this.model.get("containerClass"));
      this.$el.find('span').addClass(this.model.get("containerHoverClass"));
      this.$el.find('i').addClass(this.model.get("iClass"));
      this.$el.find('p').html(this.model.get("text"));
      $('body').append(this.$el);
      return this;
    },
    animateToTop: function() {
      $('html, body').animate({
        scrollTop: 0
      }, this.model.get("scrollSpeed"), this.model.get("easingType"));
      this.$el.find('span').stop().animate({
        'opacity': 0
      }, this.model.get("inDelay"), this.model.get("easingType"));
      return false;
    },
    scroll: function() {
      var sd;

      sd = this.$window.scrollTop();
      if (document.body.style.maxHeight === 'undefined') {
        this.$('.toTop').css({
          'position': 'absolute',
          'top': sd + this.$window.height() - 50
        });
      }
      if (sd > this.model.get("min")) {
        this.$el.fadeIn(this.model.get("inDelay"));
        return this.$el.addClass('showme');
      } else {
        this.$el.fadeOut(this.model.get("Outdelay"));
        return this.$el.removeClass('showme');
      }
    },
    show: function() {
      return this.$el.find('span').stop().animate({
        'opacity': 1
      }, this.model.get("inDelay"), this.model.get("easingType"));
    }
  });
  toTop = new ToTop();
  return module.exports = new ToTopView({
    model: toTop
  });
});
