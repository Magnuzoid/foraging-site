class UsersController < ApplicationController
  before_action :authenticate_user!, skip: :show

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
    @places = @user.places
    respond_to do |format|
      format.html {}
      format.json { render 'shared/geojson'}
    end
  end
end

private
def get_user_params

end
