define(function(require, exports, module) {
  var URLUtil;

  URLUtil = {
    url: function() {
      var url;

      return url = location.href;
    },
    uri: function() {
      var para, pos, url;

      url = this.url();
      pos = url.indexOf('#');
      if (pos !== -1) {
        para = url.substring(pos + 1, url.length);
        return para;
      } else {
        return -1;
      }
    },
    baseUrl: function() {
      var para, pos, url;

      url = this.url();
      pos = url.indexOf('#');
      if (pos !== -1) {
        para = url.substring(0, pos);
        return para;
      } else {
        return url;
      }
    },
    forwardUri: function(uri) {
      var baseUrl;

      baseUrl = this.baseUrl();
      return location.href = baseUrl + "#" + uri;
    }
  };
  return module.exports = URLUtil;
});
