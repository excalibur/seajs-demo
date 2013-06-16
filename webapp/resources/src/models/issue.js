define(function(require, exports, module) {
  var Backbone, IssueModel;

  Backbone = require('backbone');
  IssueModel = Backbone.Model.extend({
    defaults: {
      url: "",
      labels_url: "",
      comments_url: "",
      events_url: "",
      html_url: "",
      number: 0,
      title: "",
      user: {},
      labels: [],
      state: "",
      assignee: null,
      milestone: null,
      created_at: "",
      updated_at: "",
      closed_at: null,
      pull_request: {},
      body: "",
      closed_by: null
    }
  });
  return module.exports = IssueModel;
});
