App.Router = Backbone.Router.extend({
	routes: {
		'': 'index'
	}, 

	initialize: function() {
		App.Collections.tv_shows = new App.TvShowCollection(App.TempData.tv_shows);
		App.Views.tv_showListView = new App.TvShowListView({collection: App.Collections.tv_shows});
		App.Views.tv_showFormView = new App.TvShowFormView({collection: App.Collections.tv_shows});
	}
})