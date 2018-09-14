User = Backbone.Model.extend({
   urlRoot: '/user'
 });

User = Backbone.Collection.extend({
  model: User,
  urlRoot: '/users',
  url: '/users'
});
