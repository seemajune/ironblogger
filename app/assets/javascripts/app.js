var Ironblogger = Ember.Application.create();
Ironblogger.ApplicationAdapter = DS.ActiveModelAdapter.extend();

Ironblogger.Router.map(function() {
  this.resource('posts', function () {
    this.resource('post', {path: ':post_id'})
  });
});

Ironblogger.PostsRoute = Ember.Route.extend({
  model: function() {
    // makes an ajax request to a RESTful endpoint
    // in this case a get request to the url /posts/:post_id
    return this.store.find('post'); //params post_id
  }
})
 
Ironblogger.Post = DS.Model.extend({
  title: DS.attr('string'),
  body: DS.attr('string'),
  rage: DS.attr('string')
});

Ironblogger.PostsController = Emeber.ArrayConteoller.extrend({
  postCount: function() {
    return this.get('model.length');
  }.property(); // if we pass an argument ('model.length'), it will update dynamically
});
//valid data types are string, number, boolean, and date