class UsersController < ApplicationController
  before_action :authenticate_user!, skip: :show

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end
end

private
def get_user_params

end
