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
		end 
  end
end
