class Survey < ActiveRecord::Base
	
	has_many :tasks 
	has_many :user_surveys 
	has_many :user_devices, through: :user_surveys
	

	#servey Type 
	TYPE = ["local","global"]

	
	validates :title, presence: true
	validates :description, presence: true
	validates :start_date, presence: true 
	validates :end_date, presence: true
	validates :survey_type,presence: true 
	validates :is_active,presence: true 
end
