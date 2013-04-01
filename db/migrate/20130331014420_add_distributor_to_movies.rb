class AddDistributorToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :distributor, :string, :limit => nil
  end
end
