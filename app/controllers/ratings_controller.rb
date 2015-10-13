class RatingsController < ApplicationController
  

  before_action :authenticate_user!, :only => [:dashboard]
  layout "rating"
	def index
		@header = 'header'
	end

  def home
  end

  def about
  end

  def sign_up
  end

  def sign_in
  end

  def dashboard
  	@header = 'dashboard_header'
  end


  def profile
    admin_id = current_user.id
    binding.pry
  end

end
