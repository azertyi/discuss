class TopicsController < ApplicationController
	def index 
    
		@topics = Topic.all
  end

  def new
  	@topic = Topic.new
  end

  def create
  	topic = current_user.topics.build(topic_params)
  	if topic.save
  		redirect_to dashboard_path
  	end
  	# @error = 'error saving'
  	# redirect_to new_topic_path
  end

  def show
  	@topic = Topic.find(params[:id])	
  end
   def destroy
    topic = Topic.find(params[:id])
    if topic.destroy
     redirect_to dashboard_path
   end
   end


 private

 def topic_params
  params.require(:topic).permit(:title, :description, :category_id, :user_id)
end

end