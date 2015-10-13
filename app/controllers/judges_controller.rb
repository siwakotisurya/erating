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
  	@judge = User.new(set_db_field)
  	if @judge.save
  	end
  end

  def create

  end

  private def set_db_field
  	params.permit(:judge).require(:email, :encrypted_password, :email, :phone_number, :image)
	end

end
