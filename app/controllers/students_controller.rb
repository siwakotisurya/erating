class StudentsController < ApplicationController
  
  layout "dashboard"
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(set_db_field)
    if @student.save
    end
  end

  def edit
  end

  def delete
  end

  private def set_db_field
    params.require(:student).permit(:full_name, :email_address, :phone_number)
  end

end
