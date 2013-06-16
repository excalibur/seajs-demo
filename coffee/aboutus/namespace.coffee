# 全局定义
define (require, exports, module)->
	
	gobal = require 'namespace'

	Users = require 'src/collections/users'
	gobal.users = new Users()
	gobal.users.url = 'https://api.github.com/orgs/fightteam/members'

	gobal.users.add
		name:'excalibur'
		intro:'前台与java相关'
		gravatar_id:'a61d1f8569ef9b0e516833908b3e1afb'
		myUrl:'http://excalibur.github.io/'

	gobal.users.add
		name:'FightTogether'
		intro:'前台开发'
		gravatar_id:'f084b629988cdad753a06e54d2402b98'
		myUrl:'http://FightTogether.github.io/'
			
			
	module.exports = gobal
