class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_artist, only: [ :show ]
  before_action :set_event, only: [ :index, :show ]
  
  def index
    @artists = Artist.joins(:works)
    binding.pry
    #.where(event: :event_id)
    #Artist.joins(:works).where(event: @event)
    #@artists = Artist.joins(:work).where(event: @event)
    #Artist.joins(:event).where(events: @event)
    #Artist.where(event: @event)
  end
  
  def show
    @work = Work.where(event: @event)
  end
  
  private
  
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

end
