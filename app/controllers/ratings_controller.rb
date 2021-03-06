class RatingsController < ApplicationController
  

  before_action :authenticate_user!, :only => [:dashboard]
  layout "rating"
	def index
		@header = 'header'
	end

  def dashboard
  	@header = 'dashboard_header'
    authorize! :dashboard, @header
  end

  def profile
    admin_id = current_user.id
    @admin_profile = User.find(admin_id)
    @header = 'dashboard_header'
  end

  def judge_dashboard
    @header = 'judge_dashboard'
  end

end
