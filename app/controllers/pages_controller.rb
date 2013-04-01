class PagesController < ApplicationController
  def home
  end
  
  def about
  end
  
  def movies
    @movies = ActiveSupport::JSON.decode(open('http://data.sfgov.org/resource/yitu-d5am.json').read)
    if params[:tag]
      @movieselect = Movie.where("title = ?", params[:tag])
      @info = Movie.where("title = ?", params[:tag]).limit(1)
      
      require 'open-uri'
      @encodedtitle = URI::encode(params[:tag])
      @query = ActiveSupport::JSON.decode(open("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=xbrfkykvt2zqeusnbdu55gb7&q=" + @encodedtitle + "&page_limit=1").read)
      @tomatolink = @query["movies"][0]["links"]["alternate"]
    end
    
    @movielist = []
    prevtitle = ""
    @movies.each do |m| 
			unless m["locations"].nil?
				title = m["title"]
				unless title == prevtitle
    		  @movielist.push(title)
    		  prevtitle = title
  		  end
			end 
		end #movies.each do
  end #movies
end
