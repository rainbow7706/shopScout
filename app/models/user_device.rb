class UserDevice < ActiveRecord::Base
 has_many :user_surveys 
 has_many :surveys, through: :user_surveys



	def available_surveys 
		Survey.where("id not in (?)",self.user_surveys.pluck(:id))
	end 
 
end
