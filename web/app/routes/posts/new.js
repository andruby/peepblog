import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('post');
  },
  actions: {
    save: function() {
      var post = this.modelFor(this.routeName);
      post.save().then(function() {
        this.transitionTo('posts');
      }.bind(this));
    }
  }
});
