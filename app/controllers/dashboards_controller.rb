class DashboardsController < ApplicationController
	def show
    @topics = current_user.topics
	end
	

end