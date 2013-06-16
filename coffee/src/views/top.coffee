define (require, exports, module)->
	Backbone = require 'backbone'
	gobal = require 'namespace'
	tpl = require 'tpl/common/top.tpl'
	TopView = Backbone.View.extend
		tagName : 'div'
		className: 'navbar navbar-fixed-top animated fadeInLeft'
		template : _.template tpl
		events:
			'click a':'a'
		render:()->
			@$el.append @template gobal.header

			$('body').append @$el	
			@
	module.exports = TopView
