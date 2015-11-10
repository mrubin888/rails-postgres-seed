module Api
	module V1
		class Todoitem < ActiveRecord::Base
			#belongs_to :user
			
			validates :text, presence: true
			#validates :user, presence: true
		end
	end
end
