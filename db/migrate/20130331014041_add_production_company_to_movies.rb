class AddProductionCompanyToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :production_company, :string
  end
end
