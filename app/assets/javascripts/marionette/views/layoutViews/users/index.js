customerLayout = Marionette.LayoutView.extend({
  template: JST['layout'],
  regions: {
    index: '#customer_index'
  },
  onRender: function(){
    console.log("i am in Render function LayoutView")

  },
  onBeforeRender: function() {
     console.log("i am in Pre render function LayoutView")
      // set up final bits just before rendering the view's `el`
    },
  onAttach: function() {
   console.log('In attach event for LayoutView');
  },

  onDomRefresh: function() {
     console.log('dom:refresh LayoutView');
   },
   events: {
        "click .do-something": "something:do:it"
      },
   triggers: {
      "click .do-something": "something:do:it"
    }
});
