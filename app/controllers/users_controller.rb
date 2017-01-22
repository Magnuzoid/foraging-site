class UsersController < ApplicationController
  before_action :authenticate_user!, skip: :show

  def edit
  end

  def update
  end

  def show
  end
end

private
def get_user_params
  
end
