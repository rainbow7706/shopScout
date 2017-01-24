class Survey < ActiveRecord::Base
	
	has_many :tasks 
	has_many :user_surveys 
	has_many :user_devices, through: :user_surveys
	

	#servey Type 
	TYPE = ["local","global"]

	
end
