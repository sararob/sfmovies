class Movies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text  :title, :limit => nil
      t.text  :actor_1, :limit => nil
      t.text  :actor_2, :limit => nil
      t.text  :actor_3, :limit => nil
      t.text  :writer, :limit => nil
      t.text  :locations, :limit => nil
      t.text  :release_year, :limit => nil
      t.text  :production_company, :limit => nil
      t.text  :distributor, :limit => nil
      t.text  :fun_facts, :limit => nil
    end
  end
end
