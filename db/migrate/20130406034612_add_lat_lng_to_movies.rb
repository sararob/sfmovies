class AddLatLngToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :lat, :float
    add_column :movies, :lng, :float
  end
end
