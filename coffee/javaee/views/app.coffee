# 组装该页面
define (require, exports, module)->
	Backbone = require 'backbone'
	# 获取全局定义的数据
	gobal = require '../namespace'
	blogs = gobal.blogs
	BlogView = require 'src/views/blog'

	MenuView = require 'src/views/menu'

	AppView = Backbone.View.extend
		el : '#container'
		initialize:()->
			@$left = @$el.children().first()
			@$right =  @$el.children().last()
			@$content = @$left.children().first()
			_.bind @addOne,@
			@render()
		events:
			'':''
		render:()->
			# 添加左侧菜单导航
			@addMenu()
			@addAll()
			
			@
		addMenu:()->
			@menuView = new MenuView()
			@$right.append @menuView.render().el
		addAll:()->
			
			blogs.each @addOne,@
				
		addOne:(blog)->
			# 在左面添加blog
			blogView = new BlogView model:blog
			@$content.append blogView.render().el
			# 在右面添加导航
			@menuView.addOne blog
	module.exports = AppView
