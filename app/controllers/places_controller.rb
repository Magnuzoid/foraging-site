class PlacesController < ApplicationController
  #before_action :set_image, only: [:show, :edit, :update, :destroy]
  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user

    respond_to do |format|
      if @place.save
        format.html { redirect_to places_url, notice: 'Sted er tilføjet!' }
        format.js
      else
        format.js
      end
    end
  end

  def index
    @place = Place.new

    if params[:search]
      @places = Place.search( params[:search] )
    else
      @places = Place.all
    end

    respond_to do |format|
      format.html { }
      format.js { }
      format.json { render 'geojson' }
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def place_params
    params.require(:place).permit(:title, :description, :user_id, :lat, :lng)
  end
end
