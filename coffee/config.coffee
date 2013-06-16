seajs.config
	# enable plugins
	plugins:[
		'shim'
		'text'
	]

	alias:
		'jquery':
			src:'http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'
			exports: 'jQuery'
		'underscore':
			src:'lib/underscore/underscore.js'
			exports: '_'
		'backbone':
			src: 'lib/backbone/backbone.js'
			deps: [
				'underscore'
				'jquery'
			]
			exports: 'Backbone'
		'bootstrap':
			src:'lib/bootstrap/bootstrap.min.js'
			deps: [
				'jquery'
			]
			exports: 'Bootstrap'
		'modernizr':
			src:'lib/modernizr/modernizr.js'
			exports: 'Modernizr'
		'mmenu':
			src: 'lib/mmenu/jquery.mmenu.min.js'
			deps: [
				'jquery'
				'lib/mmenu/mmenu.css'
			]
			exports: 'mmenu'	
		'prettify':
			src: 'lib/google-code-prettify/prettify.js'
			deps: [
				'jquery'
			]
			exports: 'prettify'
		'easing':
			src: 'lib/easing/easing.js'
			deps: [
				'jquery'
			]
			exports: 'easing'	