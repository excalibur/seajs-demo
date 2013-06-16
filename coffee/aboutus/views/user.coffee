define (require, exports, module)->
	Backbone = require 'backbone'
	tel = require 'tpl/common/user.tpl'
	
	UserView = Backbone.View.extend
		tagName:'li'
		template: _.template tel
		initialize:()->
			@
		events:
			"click .title":"toggleContent"
			"click .toolbar":"showContent"
		render:()->
			console.log '11'
			@$el.html @template @model.toJSON()
			@$('.cricle-img').attr('style', 'background-image:url(https://secure.gravatar.com/avatar/'+@model.get('gravatar_id')+'?s=420&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png);')
			@
		
	module.exports = UserView