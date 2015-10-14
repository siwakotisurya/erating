class GradingsController < ApplicationController
  
  layout "dashboard"
  def index
  end

  def new
    @categories = Category.all
    @student = Student.find(params[:id])
    @grading = Grading.new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
