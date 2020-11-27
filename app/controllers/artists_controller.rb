class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_artist, only: [ :show ]
  before_action :set_event, only: [ :show, :index ]
  
  def index
    @artists = @event.artists
    #@artists = Artist.joins(:event).where(event: @event)
    #Artist.joins(:works).where(event: @event)
    #@artists = Artist.joins(:work).where(event: @event)
    #Artist.joins(:event).where(events: @event)
    #Artist.where(event: @event)
    #Artist.joins(:event).where('events.id = ?', params[:query])
  end
  
  def show
    @work = @event.works
  end
    
  private
  
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

end
