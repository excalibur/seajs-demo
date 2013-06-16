define (require, exports, module)->
	Backbone = require 'backbone'
	tel = require 'tpl/common/menu.tpl'
	li = '<li><a href="#<%=id%>"><%=title%></a></li>'
	MenuView = Backbone.View.extend
		tagName:'div'
		className:'menu'
		template: _.template tel
		initialize:()->
		
			_.bind @addOne,@
			@
		events:
			"click a":"scrollTo"
		render:()->
			@$el.append @template {}
			@$ul = @$el.find 'ul'
			@
		scrollTo:(e)->
			console.log e.target
			console.log $($(e.target).attr('href')).offset()
			$("html,body").animate scrollTop: $($(e.target).attr('href')).offset().top-90
				,1000
			false
		addOne:(blog)->
			@$ul.append _.template li,blog.toJSON()
		



	module.exports = MenuView