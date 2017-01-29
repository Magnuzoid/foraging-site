class CategoriesController < ApplicationController
  before_action :authenticate_user!, skip: :show

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)

    respond_to do |format|
      if @category.save
          flash[:success] = "Category was succesfully added to database"
          format.html { redirect_to category_path(@category) }
      else
          format.html { redirect_to new_category_path(@category) }
      end
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private
  def category_params
    params.require(:category).permit(:name, :id)
  end
end
