define (require, exports, module)->
	Backbone = require 'backbone'
	require 'easing'
	ToTop = Backbone.Model.extend
		defaults:
			text: 'To Top'
			min: 200
			inDelay:600
			outDelay:400
			containerClass: 'toTop'
			containerHoverClass: 'totop-border'
			iClass: 'icon-angle-up'
			scrollSpeed: 1200
			easingType: 'easeOutQuart'

	ToTopView = Backbone.View.extend
		tagName:'a'
		template: '<span><p></p><i></i></span>'
		initialize:(options)->
			
			@$template = $ @template
			@model.set options
			_.bindAll @,'render','animateToTop','scroll'
			@$window = $ window

			@$window.scroll @scroll
			@
		events:
			"click":"animateToTop"
			"mouseleave":"show"
		render:(options)->
			@model.set options
			@$el.append @$template
			@$el.addClass @model.get "containerClass"
			@$el.find('span').addClass  @model.get "containerHoverClass"
			@$el.find('i').addClass @model.get "iClass"
			@$el.find('p').html @model.get "text"
			$('body').append @$el
			@

		animateToTop:()->
			

			$('html, body').animate
				scrollTop:0
				@model.get "scrollSpeed"
				@model.get "easingType"
		
			@$el.find('span').stop().animate
				'opacity': 0 
				@model.get "inDelay"
				@model.get "easingType"
			false

				
		scroll:()->
			sd = @$window.scrollTop()
			if document.body.style.maxHeight is 'undefined'
				@$('.toTop').css
					'position': 'absolute'
					'top': sd + @$window.height() - 50
				
			
			if ( sd > @model.get "min" ) 
				@$el.fadeIn @model.get "inDelay"
				@$el.addClass 'showme'
			else 
				@$el.fadeOut @model.get "Outdelay"
				@$el.removeClass 'showme'
			
		show:()->
			@$el.find('span').stop().animate
				'opacity': 1 
				@model.get "inDelay"
				@model.get "easingType"

	toTop = new ToTop()

	module.exports = new ToTopView model:toTop