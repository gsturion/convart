class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_artist, only: [:show ]
  
  def index
    @artists = Artist.all
    if params[:query].present?
      @artists = Artist.where('event_id = ?', params[:query])
    else
      @artists = Artist.all
    end 
  end
  
  def show
  end
  
  private
  
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:id])
  end
  
end
