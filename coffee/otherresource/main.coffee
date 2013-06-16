# 初始化还书
define (require)->
	$ = require 'jquery'

	TopView = require 'src/views/top.js'
	topView = new TopView()
	topView.render()

	toTopView = require 'src/views/totop.js'
	toTopView.render()


	