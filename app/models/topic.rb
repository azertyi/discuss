class Topic < ActiveRecord::Base
	# validates :title, presence: true
	belongs_to :category
	belongs_to :user
end
