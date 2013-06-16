# 定义github获取用户 的数据
define (require, exports, module)->
	Backbone = require 'backbone'
	UserModel = Backbone.Model.extend
		defaults:
			url: ""
			html_url: ""
			issue_url: ""
			id: 19241960
			user: {}
			created_at: ""
			updated_at: ""
			body: ""
		
		
	module.exports = UserModel