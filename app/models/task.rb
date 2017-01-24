class Task < ActiveRecord::Base
  belongs_to :survey

	validates :title, presence: true
	validates :survey_id, presence: true 
	validates :ans_1,presence: true
	validates :ans_2,presence: true
	validates :ans_3,presence: true
	validates :ans_4,presence: true
	validates :ans_5,presence: true
	
end
