var CustomerTableView = Marionette.CompositeView.extend({
  template: JST['composite'],
  childView: customerIndex,
  childViewContainer: 'tbody'
  
});
