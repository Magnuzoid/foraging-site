class PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def index
    if params[:search]
      @places = Place.search(params[:search])
    else
      @places = Place.all
    end
  end
end
