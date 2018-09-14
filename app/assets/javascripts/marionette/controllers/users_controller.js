users_controller = Marionette.Controller.extend({
  index: function() {
    users = new User();
    users.fetch().done(function() {
    console.log(users.fetch())
    console.log("i am in controller index method")
    var customer_view = new CustomerTableView({collection: users});
    $('body').html(customer_view.render().$el);
      // customer_view.$("#comment").trigger("click");

    });
  },
  show:function(){console.log('In show Method')},
  search: function(){console.log('In Search Method')},
  comment: function(){
    console.log('In Comment Method'
  )}
});
