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
  end
end
