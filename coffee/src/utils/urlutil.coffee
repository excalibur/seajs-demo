define (require, exports, module)->
	URLUtil =
		url:()->
			url = location.href
		uri:()->
			url = @url()
			pos = url.indexOf '#'
			if pos isnt -1
				para = url.substring pos+1,url.length
				para
			else
				-1
		baseUrl:()->
			url = @url()
			pos = url.indexOf '#'
			if pos isnt -1
				para = url.substring 0,pos
				para
			else
				url
		forwardUri:(uri)->
			baseUrl = @baseUrl()
			location.href = baseUrl+"#"+uri
	module.exports = URLUtil