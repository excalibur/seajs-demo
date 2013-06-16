define(function(require, exports, module) {
  var gobal;

  gobal = {};
  gobal.header = {
    title: 'FighteTeam',
    url: '/',
    nav: [
      {
        title: 'Web前端学习记录',
        url: '/webfrontend.html'
      }, {
        title: 'Java后端学习记录',
        url: '/javaee.html'
      }, {
        title: 'Github开源项目',
        url: '/opensource.html'
      }, {
        title: '其他相关资源',
        url: '/otherresource.html'
      }, {
        title: '关于我们',
        url: '/aboutus.html'
      }
    ]
  };
  return module.exports = gobal;
});
