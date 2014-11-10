App.tv_show_Collection = Backbone.Collection.extend({
	
	model: App.TvShowModel,

	url: '/tv_shows',

	initialize: function() {
		console.log('New tv show Collection');
	}
});