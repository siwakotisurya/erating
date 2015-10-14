class GradingsController < ApplicationController
  
  layout "dashboard"
  def index
    @student = Student.find(params[:student_id])
    @gradings = @student.gradings
  end

  def new
    @categories = Category.all
    @student = Student.find(params[:student_id])
    @grading = Grading.new
  end

  def create

    @student = Student.find(params[:student_id])
    @grading = @student.gradings.new(set_db_field)
    if @grading.save
      flash[:message]= "Grade for #{@student.full_name} Sucessfully added"
    else
      flash[:error]= @grading.errors.full_messages
      redirect_to new_student_grading_path 
    end 
  end

  def edit
  end

  def destroy
  end

  private def set_db_field
    params.require(:grading).permit(:name, :number, :judge_by)
  end
end
