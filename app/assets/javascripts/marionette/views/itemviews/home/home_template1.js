var homeTemplate1 = Marionette.LayoutView.extend({
  template: JST['home_page_layout_template1'],
  onBeforeRender: function() {
     console.log("i am in Pre render function ItemView")
    },
  onRender: function() {
    console.log('I am in render function ItemView');
  },
  onAttach: function() {
   console.log('In attach for ItemView');
  },
  onDomRefresh: function() {
     console.log('In dom:refresh For ItemView');
   },
  onDestroy: function(){
    console.log("view has been destroyed");
  }
});
