define (require)->
	Modernizr = require 'modernizr'
	# 查询是否支持html5标签

	# 查询是否支持媒体查询
	Modernizr.load
		test: Modernizr.mq 'only all'
		nope:'js/a.js'