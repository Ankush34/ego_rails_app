var AppLayoutView = Marionette.LayoutView.extend({
	template: JST['home_page_layout'],
	regions: {
		main_layout: "#home_page_layout_part2"
	},
	ui: {
    open: '.open',
    close: '.closebtn'
  },
  events: {
    'click @ui.open': 'openNav',
  	'click @ui.close': 'closeNav'
  },
  openNav: function(){
  	console.log("opening nav");
  	$("#mySidenav").css("width", "250px");
  },
  closeNav: function(){
  	console.log("closing nav");
  	$("#mySidenav").css("width", "0px");
  }
});