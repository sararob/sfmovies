class Movie < ActiveRecord::Base
  attr_accessible :title, :locations, :actor_1, :actor_2, :actor_3, :writer, :director, :release_year, :production_company, :distributor, :fun_facts
end