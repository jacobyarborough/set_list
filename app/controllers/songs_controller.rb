class SongsController < ApplicationController
  def index 
    @songs = Song.all
  end 

  def show
    @song = Song.find(params[:id])
  end 

  def new
    @artist = Artist.find(params[:id])
  end 

  def create
    song = Song.new(song_params)
    song.artist_id = params[:id]
    song.save!

    redirect_to "/songs/#{song.id}"
  end 

  private

  def song_params
    params.permit(:title, :length, :play_count)
  end 
end 