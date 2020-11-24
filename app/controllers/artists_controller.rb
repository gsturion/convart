class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_artist, only: [ :show ]
  before_action :set_event, only: [ :show ]
  
  def index
    if params[:query].present?
      @artists = Artist.works
      #joins(:event).where('event_id = ?', params[:query])
    else
      @artists = Artist.all
    end 
  end
  
  def show
    #@works = Work.where("events.event_id = ?", params[:event_id])
    @work = Work.where(event_id: @event)
  end
  
  private
  
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
  
end
