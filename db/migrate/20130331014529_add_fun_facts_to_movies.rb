class AddFunFactsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :fun_facts, :string, :limit => nil
  end
end
