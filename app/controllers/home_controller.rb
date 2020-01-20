class HomeController < ApplicationController
  def index
    # render :layout => false
  end

  def songs
    @songs = Song.list_songs
    puts @songs
    # render :layout => false
  end
end
