home_controller =  Marionette.Controller.extend({
	home: function(){
		users = new User();
    users.fetch().done(function() {
		console.log("i am in home controller home method");
	  home_view = new AppLayoutView();
	  console.log(home_view);
	  var hometemplate1 = new homeTemplate1();
	  var mapTemplate1 = new mapTemplate();
		var serviceTemplate1 = new serviceTemplate();
	  $('body').html(home_view.render().$el);
	  home_view.getRegion('main_layout').show(hometemplate1,{preventDestroy: true});
	  home_view.getRegion("map_view_layout").show(mapTemplate1, {preventDestroy: true});
	  home_view.getRegion("service_view_layout").show(serviceTemplate1,{preventDestroy: true});
	  var mapView = home_view.getRegion("map_view_layout").currentView
	  console.log(mapView);
	  var serviceView = home_view.getRegion('service_view_layout').currentView;
	  console.log(serviceView);
	  var childView = home_view.getRegion('main_layout').currentView;
	  console.log(childView);
	  if (childView && childView.isRendered) {
	  	console.log("i am rendered");
	  } 
	});
	 }
	});

