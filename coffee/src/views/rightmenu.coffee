define (require, exports, module)->
	Backbone = require 'backbone'
	MenuView = require 'src/views/menu'
	RightMenuView = Backbone.View.extend
		tagName:'div'
		className:'menu'
		template: "<div></div>"
		initialize:()->
			
			@
		events:
			"click":"animateToTop"
			"mouseleave":"show"
		render:()->
			@$el.append @template {}
			@

		



	module.exports = RightMenuView