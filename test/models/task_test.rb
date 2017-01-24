require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "should not save task without title" do
  	task = tasks(:task_1)
  	task.title = nil
  	assert_not task.save, "Saved the task without title"
	end


  test "should not save task without survey" do
  	task = tasks(:task_1)
  	task.survey_id = nil 
  	assert_not task.save, "Saved the task without survey"
	end

	test "should not save task without ans_1" do
  	task = tasks(:task_1)
  	task.ans_1 = nil
  	assert_not task.save, "Saved the task without ans_1"
	end

end
