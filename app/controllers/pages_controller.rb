class PagesController < ApplicationController
  def home
  end
  
  def about
  end
  
  def movies
    @movies = ActiveSupport::JSON.decode(open('http://data.sfgov.org/resource/yitu-d5am.json').read)
  end
end
