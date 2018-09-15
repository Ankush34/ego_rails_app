var mapTemplate = Marionette.LayoutView.extend({
  template: JST['home_page_layout_template2'],
  onBeforeRender: function() {
     console.log("i am in Pre render function mapView")
    },
  onRender: function() {
    console.log('I am in render function mapView');
  },
  onAttach: function() {
   console.log('In attach for mapView');
  },
  onDomRefresh: function() {
     console.log('In dom:refresh For mapView');
   },
  onDestroy: function(){
    console.log("map view has been destroyed");
  }
});
