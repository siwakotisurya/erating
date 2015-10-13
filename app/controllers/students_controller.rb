class StudentsController < ApplicationController
  
  layout "dashboard"
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
    authorize! :dashboard, @student
  end

  def create
    @student = Student.new(set_db_field)
    authorize! :dashboard, @student
    if @student.save
    end
  end

  def edit
  end

  def destroy
    @student = Student.find(params[:id])
    if @student.destroy
      flash[:msg]="#{@student.full_name}  deleted"
      redirect_to students_path
    end
  end

  private def set_db_field
    params.require(:student).permit(:full_name, :email_address, :phone_number)
  end

end
