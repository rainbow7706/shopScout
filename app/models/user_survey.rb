class UserSurvey < ActiveRecord::Base
  belongs_to :user_device
  belongs_to :survey
end
