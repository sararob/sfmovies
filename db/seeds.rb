# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'

@movies = ActiveSupport::JSON.decode(open('http://data.sfgov.org/resource/yitu-d5am.json').read).each do |o|
  print "."
  movie = Movie.new(o, :without_protection => true)
  movie.title = o["title"]
  movie.actor_1 = o["actor_1"]
  movie.actor_2 = o["actor_2"]
  movie.actor_3 = o["actor_3"]
  movie.writer = o["writer"]
  movie.locations = o["locations"]
  movie.release_year = o["release_year"]
  movie.director = o["director"]
  movie.production_company = o["production_company"]
  movie.distributor = o["distributor"]
  movie.fun_facts = o["fun_facts"]
  if o["locations"] && o["actor_1"]
    @address = URI::encode(o["locations"])
    @locations = ActiveSupport::JSON.decode(open("http://maps.googleapis.com/maps/api/geocode/json?address=" + @address + ",+San+Francisco,+CA&sensor=false").read)
    if @locations["status"] == "OK"
      @lat = @locations["results"][0]["geometry"]["location"]["lat"]
      @lng = @locations["results"][0]["geometry"]["location"]["lng"]
      movie.lat = @lat
      movie.lng = @lng
      movie.save!
    end
  end
end
