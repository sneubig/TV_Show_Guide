App.TvShowModel = Backbone.Model.extend({
	
	defaults: {
		name: null,
		description: null,
		image: null,
		day: null,
		time: null,
		channel: null
	},

	initialize: function() {
		console.log('New TvShow Model');
	}
});