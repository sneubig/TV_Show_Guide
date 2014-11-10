class CreateTvShows < ActiveRecord::Migration
  def change
    create_table :tv_shows do |t|
    	t.string :name
    	t.text :description
    	t.string :image
    	t.string :day
    	t.string :time
    	t.string :channel
    	t.timestamps
    end
  end
end
