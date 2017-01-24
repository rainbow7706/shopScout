require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  
  test "should not save survey without title" do
  	survey = surveys(:survey_1)
  	survey.title = nil
  	assert_not survey.save, "Saved the survey without title"
	end
	
	test "should not save survey without  description" do
  	survey = surveys(:survey_1)
  	survey.description = nil
  	assert_not survey.save, "Saved the survey without description"
	end


	test "should not save survey without  start_date" do
  	survey = surveys(:survey_1)
  	survey.start_date = nil
  	assert_not survey.save, "Saved the survey without start date"
	end


	test "should not save survey without  end_date" do
  	survey = surveys(:survey_1)
  	survey.end_date = nil
  	assert_not survey.save, "Saved the survey without end date"
	end


	test "should not save survey without  survey_type" do
  	survey = surveys(:survey_1)
  	survey.survey_type = nil
  	assert_not survey.save, "Saved the survey without survey type"
	end


	test "should not save survey without  is_active" do
  	survey = surveys(:survey_1)
  	survey.is_active = nil
  	assert_not survey.save, "Saved the survey without is active"
	end

	test "should save survey with all attributes" do 
		survey = surveys(:survey_1)
		assert survey.save, "Survey can not save having all attributes"
	end 


end
