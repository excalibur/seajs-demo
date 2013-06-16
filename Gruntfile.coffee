###
 * grunt-init-spa
 * https://gruntjs.com/
 *
 * Copyright (c) 2013 excalibur "刘真源", contributors
 * Licensed under the MIT license.
###
'use strict'
module.exports = (grunt)->

	# Constants
	ASSETS_PATH = "webapp"
	APP_PATH = "resources"
	DIST_PATH = "dist"
	DEV_PATH = "#{ DIST_PATH }/development"
	REL_PATH = "#{ DIST_PATH }/release"
	JS_DEV_PATH = "#{ ASSETS_PATH }/resources"
	CSS_DEV_PATH = "#{ ASSETS_PATH }/resources/css"
	TEST_PATH = "test"
	LIBS_PATH = "#{ASSETS_PATH}/libs"
	

	# paths setup - separate as some modules dont process templates correctly
	app_paths = 

		# coffeescript sources
		coffee_dir: 'coffee'
		coffee_src: '**/*.coffee'
		coffee_dest: "#{ JS_DEV_PATH }"
		# less sources
		less_dir: 'less'
		less_src: 'css/**/*.less'		

		# -- compiled output --

		

		# css sources
		css_dir: "#{CSS_DEV_PATH}"
		css_src: "#{CSS_DEV_PATH}/**/*.css"

	# init project configuration
	grunt.initConfig
		# Metadata
		pkg:grunt.file.readJSON 'join.json'
		banner:"/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - 
      			<%= grunt.template.today('yyyy-mm-dd') %>\n
      			<%= pkg.homepage ? '* ' + pkg.homepage + '\\n' : '' %>
      			* Copyright (c) <%= grunt.template.today('yyyy') %> <%= pkg.author.name %>;
      			Licensed <%= _.pluck(pkg.licenses, 'type').join(', ') %> */\n"

		# clean Task
		clean:
			index:[DIST_PATH]
			build:["dist/**/*-debug.js"]

	
		
		# less Task
		less:
			base:				
				files: app_paths.less_file
			development:
				expand: true
				cwd: app_paths.less_dir
				src: [app_paths.less_src]
				dest: "#{ASSETS_PATH}/resources"
				ext: '.css'

		
		# coffeescript Task
		coffee:
			development: 
				options:
					bare: true
				expand: true		       
				cwd: app_paths.coffee_dir
				src: [
					app_paths.coffee_src
				]
				dest: app_paths.coffee_dest
				ext: '.js'
		# watch Task
		watch:
			default:
				files: [
					app_paths.coffee_src
					"less/**/**"
				]
				tasks: [
					"coffee"
					"less"
					]
			coffee: 
				files: [
					app_paths.coffee_src
				]
				tasks: [
					"coffee"
				]
				
			less: 
				files: [
					"less/**/**"
				]
				tasks: [
					"less"
				]
		# connect Task
		connect:
			# custom define
			base:
				options:
					port:9000
					base:'./webapp'
					keepalive:true
					endwith:'.html'
					middleware: (connect, options)->
						url = require 'url'	
						fs = require 'fs'
						[
		    				(req, res, next)->
                				#res.end 'Hello from port ' + options.port
                				#req+".html"
                				pathname =  options.base + url.parse(req.url).pathname
                				pathnameEnd = pathname.substr -1,1
                				
                				a = pathname.indexOf '.'
                				if a is -1 and pathnameEnd isnt '/'
                					pathname += options.endwith
                				if pathnameEnd is '/'
                					pathname += 'index.html'
                				fs.readFile pathname,(err, data)->
                					if err
                						res.writeHead 500
                						res.end '500'
                					else res.end data
            						
                				
                				null
              
  						]

			test:
				options:
					port:9001
					base:'./test'

			
		concat:
			index:
				src: [
					'dist/webapp/resources/index/**/*.js'
					]
  				,dest: 'dist/index.js'
			aboutus:
				src: [
					'dist/webapp/resources/aboutus/**/*.js'
					]
  				,dest: 'dist/aboutus.js'
			webfrontend:
				src: [
					'dist/webapp/resources/webfrontend/**/*.js'
					]
  				,dest: 'dist/webfrontend.js'
			all:
				src: [
					'dist/webapp/resources/**/*.js'
					]
  				,dest: 'dist/all.js'
		transport:
			options:
				format:'hello/dist/{{filename}}'
			index:
				files:[
					src: 'webapp/resources/**/*.js'
					dest: 'dist'
				]

				
		      
		  

	# These plugins provide necessary tasks
	grunt.loadNpmTasks 'grunt-contrib-clean'
	grunt.loadNpmTasks 'grunt-contrib-copy'
	grunt.loadNpmTasks 'grunt-contrib-concat'
	grunt.loadNpmTasks 'grunt-contrib-qunit'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-less'
	grunt.loadNpmTasks 'grunt-contrib-connect'
	grunt.loadNpmTasks 'grunt-cmd-transport'

	# register default Task
	grunt.registerTask 'default', [
		'clean'
		'less'
		'coffee'
	]
	
