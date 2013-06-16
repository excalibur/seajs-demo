# 初始化还书
define (require)->
	$ = require 'jquery'
	

	AppView = require './views/app.js'
	new AppView()
	TopView = require 'src/views/top.js'
	topView = new TopView()
	topView.render()

	toTopView = require 'src/views/totop.js'
	toTopView.render()


	require 'prettify'

	prettyPrint()
