class AddDistributorToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :distributor, :string
  end
end
