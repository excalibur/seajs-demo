define (require, exports, module)->
	Backbone = require 'backbone'
	tel = require 'tpl/common/blog.tpl'
	IssueModel = require 'src/models/issue'
	BlogView = Backbone.View.extend
		tagName:'article'
		className:'blog'
		template: _.template tel
		initialize:()->
			@$toolbar = @$el.find '.toolbar'
			_.bind @toggleContent,@
			_.bind @getCommments,@
			@getCommments()
			@listenTo @model,'change',@render
			@
		events:
			"click .title":"toggleContent"
			"click .toolbar":"showContent"
		render:()->
			@$el.attr 'id',@model.get 'id'
			@$el.html @template @model.toJSON()
			
			@
		toggleContent:(e)->
			if @model.get 'show'
				@hideContent e
			else
				@showContent e
			
		showContent:(e)->
			
			@model.toggle()
			# 防止连接跳转
			false
		getCommments:()->
			model = @model
			$.get @model.get('commentAPI'),(data)->
				model.set commentNum:data.comments
			
			
		hideContent:(e)->
		

			@model.toggle()
			false
	module.exports = BlogView