class ArtistsController < ApplicationController 
  def index
    @artists = Artist.all
  end 

  def show 
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    Artist.create!(name: params[:name])
    redirect_to "/artists"
  end
end 