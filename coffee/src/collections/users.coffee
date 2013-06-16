# 定义组织 组织是一群用户的集合  并且组织还有组织的属性
define (require, exports, module)->
	Backbone = require 'backbone'
	UserModel = require '../models/user'
	Users = Backbone.Collection.extend
		model:UserModel

			
		
		
	module.exports = Users