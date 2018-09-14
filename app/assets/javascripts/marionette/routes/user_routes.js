var myController = new users_controller()

ModeratorRouter = Mn.AppRouter.extend({
  controller: myController,
  appRoutes: {
    'users':'index'
   },
  onRoute: function(name, path, args) {
    console.log('**********************User navigated to ' + path +'*************************');
  }
});

new ModeratorRouter()
