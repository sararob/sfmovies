class MoviesController < ApplicationController
  def movies
    @movies = ActiveSupport::JSON.decode(open('http://data.sfgov.org/resource/yitu-d5am.json').read).with_indifferent_access
  end
end