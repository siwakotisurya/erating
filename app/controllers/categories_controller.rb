class CategoriesController < ApplicationController
  
  layout "dashboard"
  def index
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(set_db_field)
    if @category.save
    end
  end

  def edit
  end

  def destroy
  end

  private def set_db_field
     params.require(:category).permit(:name) 
  end

end
