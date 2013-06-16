define (require, exports, module)->
	Backbone = require 'backbone'
	urlutil = require 'src/utils/urlutil.js'
	Workspace = Backbone.Router.extend
		initialize:()->
			@container = $('#container')
		routes:
			'webfrontend':'webfrontend'
			'javaee':'javaee'
			'opensource':'opensource'
			'otherresource':'otherresource'
			'aboutus':'aboutus'
			'*actions':'index'
		index:()->
			console.log 'index'
			@hideView()
			@view = require '../views/app.js'
			@showView()

		webfrontend:()->
			console.log 'webfrontend'
			@hideView()
			@view = require '../views/webfrontend.js'
			@showView()
		javaee:()->
			console.log 'javaee'
			@hideView()
			@view = require '../views/javaee.js'
			@showView()
		opensource:()->
			console.log 'opensource'
			@hideView()
			@view = require '../views/opensource.js'
			@showView()
		otherresource:()->
			console.log 'otherresource'
			@hideView()
			@view = require '../views/otherresource.js'
			@showView()
		aboutus:()->
			console.log 'aboutus'
			@hideView()
			@view = require '../views/aboutus.js'
			@showView()
		hideView:()->
			if @view isnt undefined
				# @container.removeClass 'fadeInLeft'
				# @container.addClass 'fadeOutRightBig'
				@container.empty()
				
			else

		showView:()->
			# @container.removeClass 'fadeOutRightBig'
			@container.addClass 'fadeInLeft'
			@container.append @view.render().el

			setTimeout "$('#container').removeClass('fadeInLeft');"
				,500
			
	module.exports = Workspace
