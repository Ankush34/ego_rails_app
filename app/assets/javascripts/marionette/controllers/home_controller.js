home_controller =  Marionette.Controller.extend({
	home: function(){
		users = new User();
    users.fetch().done(function() {
		console.log("i am in home controller home method");
	  home_view = new AppLayoutView();
	  console.log(home_view);
	  var hometemplate1 = new homeTemplate1();
	  $('body').html(home_view.render().$el);
	  home_view.getRegion('main_layout').show(hometemplate1,{preventDestroy: true});
	  var childView = home_view.getRegion('main_layout').currentView;
	  console.log(childView);
	  if (childView && childView.isRendered) {
	  	console.log("i am rendered");
	  } 
	});
	 }
	});