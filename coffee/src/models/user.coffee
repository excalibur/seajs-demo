# 定义github获取用户 的数据
define (require, exports, module)->
	Backbone = require 'backbone'
	UserModel = Backbone.Model.extend
		defaults:
			# 用户头像id
			gravatar_id:''
			type:''
			name:''
			company:''
			blog:''
			location:''
			email:''
			hireable:true
			bio:''
			intro:''
			myUrl:''
		
		
	module.exports = UserModel