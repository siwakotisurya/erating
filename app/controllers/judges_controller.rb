class JudgesController < ApplicationController
  
	layout "dashboard"
  def index
  end

  def show
  end

  def edit
  end

  def delete
  end

  def new
  	@judge = User.new
  end

  def create
  	@judge = User.new(set_db_field)

  	if @judge.save
  	
  	else
      binding.pry
  		redirect_to root_path
  	end
  end

  private def set_db_field
  	params.require(:user).permit(:email, :password, :address, :phone_number, :image)
	end

end
