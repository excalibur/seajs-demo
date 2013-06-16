define (require, exports, module)->
	Backbone = require 'backbone'
	gobal = require '../namespace'
	users = gobal.users

	AppView = Backbone.View.extend
		el : '#container'
		initialize:()->
			@$container = @$el.find('.author')
			@listenTo users,'add',@addOne
		events:
			'click a':'a'
		render:()->
			users.each @addOne,@
			
			@
		addOne:(user)->
			UserView = require './user'
			userView = new UserView model:user
			@$container.append userView.render().el

	module.exports = AppView
