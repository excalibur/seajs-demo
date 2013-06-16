# 全局定义
define (require, exports, module)->
	BlogsCollection = require 'src/collections/blogs'
	gobal = require 'namespace'
	gobal.blogs = new BlogsCollection()
	about_web_tpl = require 'tpl/excalibur/about_web.tpl'

	gobal.blogs.add
			title:'我的后端技术选型'
			commentUrl:'https://github.com/fightteam/fightteam.github.com/issues/2'
			commentAPI:'https://api.github.com/repos/fightteam/fightteam.github.com/issues/2'
			
	module.exports = gobal
