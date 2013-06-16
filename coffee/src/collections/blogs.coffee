define (require, exports, module)->

	Backbone = require 'backbone'

	BlogModel = require '../models/blog'

	BlogsCollection = Backbone.Collection.extend
		model:BlogModel


	module.exports = BlogsCollection
