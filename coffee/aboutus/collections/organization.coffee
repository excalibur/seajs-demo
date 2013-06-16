# 定义组织 组织是一群用户的集合  并且组织还有组织的属性
define (require, exports, module)->
	Backbone = require 'backbone'

	Organization = Backbone.Conllection.extend
		model:null
			
		
		
	module.exports = Organization