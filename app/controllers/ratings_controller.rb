class RatingsController < ApplicationController
  
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

end
