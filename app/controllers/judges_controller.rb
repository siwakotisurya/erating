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
  	end
  end

  private def set_db_field
  	params.permit(:user).require(:email, :encrypted_password, :address, :phone_number, :image)
	end

end
