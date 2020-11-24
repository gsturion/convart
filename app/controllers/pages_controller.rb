class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :map ]

  def home
  end

  def map
  end
end
