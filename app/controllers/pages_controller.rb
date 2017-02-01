class PagesController < ApplicationController
  def index

  end

  def show_user_nav
    respond_to do |format|
      format.js { }
    end
  end
end
