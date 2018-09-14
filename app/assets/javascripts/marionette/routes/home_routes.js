var home_controller = new home_controller()

HomeRouter = Mn.AppRouter.extend({
	controller: home_controller,
	appRoutes: {
		'home': 'home'
	},
	onRoute: function(name, path, args){
		 console.log('**********************User navigated to ' + path +'*************************');
	}
});

new HomeRouter()
