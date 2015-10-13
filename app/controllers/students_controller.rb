class StudentsController < ApplicationController
  
  layout "dashboard"
  def index
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
  end

  def edit
  end

  def delete
  end
end
