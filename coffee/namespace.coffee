# 全局定义
define (require, exports, module)->
	BlogsCollection = require 'src/collections/blogs'
	gobal = {}
	# 定义顶部导航信息
	gobal.header = 
		title:'FighteTeam'
		url:'/'
		nav:[
			{
			title:'Web前端学习记录'
			url:'/webfrontend.html'
			}	
			{
			title:'Java后端学习记录'
			url:'/javaee.html'	
			}
			{
			title:'Github开源项目'
			url:'/opensource.html'	
			}
			{
			title:'其他相关资源'
			url:'/otherresource.html'	
			}
			{
			title:'关于我们'
			url:'/aboutus.html'	
			}
		]

	
	# 定义Web前端信息

	# gobal.blogs = new BlogsCollection()
	# about_web_tpl = require 'tpl/excalibur/about_web.tpl'

	# gobal.blogs.add
	# 		title:'我的前端技术选型'
	# 		commentUrl:'https://github.com/fightteam/fightteam.github.com/issues/1'
	# 		commentAPI:'https://api.github.com/repos/fightteam/fightteam.github.com/issues/1'
	# 		contentTpl:about_web_tpl

	# 定义Java端信息
			
	module.exports = gobal
