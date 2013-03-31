class AddFunFactsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :fun_facts, :string
  end
end
