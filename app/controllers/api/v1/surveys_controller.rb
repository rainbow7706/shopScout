class Api::V1::SurveysController < Api::V1::BaseController

	#return all surveys but only active
	def get_all_surveys
		@surveys = Survey.active_surveys
		render "/api/v1/surveys/surveys.json"		
	end 


	#all global but active surveys
	def get_global_surveys
		@surveys = Survey.global_surveys
	  render "/api/v1/surveys/surveys.json"		
	end 

	#all local but active surveys
	def get_local_surveys
		@surveys = Survey.local_surveys
	  render "/api/v1/surveys/surveys.json"		
	end 


	#all active-available  surveys
	def get_available_surveys 
		device_type = params[:user][:device_type]
		device_id = params[:user][:device_id]
		user = UserDevice.find_by(:device_type=>device_type,:device_id=>device_id)
		if user.present?
			@surveys = user.available_surveys
		else 
			@surveys = Survey.active_surveys
		end
		render "/api/v1/surveys/surveys.json"			
	end 


	#all active-completed surveys
	def get_completed_surveys 
		device_type = params[:user][:device_type]
		device_id = params[:user][:device_id]
		user = UserDevice.find_by(:device_type=>device_type,:device_id=>device_id)
		if user.present?
			@surveys = user.surveys
			if @surveys.present?
				render "/api/v1/surveys/surveys.json"			
		  end
		end 
		render_json({:result=>{:messages => "No Survey(s) Found" , :rstatus=>0, :errorcode => 0}}.to_json)
	end 

  #survey details
	def get_survey_detail
		@survey = Survey.find_by_id(params[:survey][:survey_id])
		if !@survey.present?
			render_json({:result=>{:messages => "No Survey Found" , :rstatus=>0, :errorcode => 0}}.to_json)
		end 
	end 

  #all tasks associated with survey 
	def get_survey_tasks
		device_id = params[:user][:device_id]
		device_type = params[:user][:device_type]
		survey_id = params[:survey][:survey_id]
		survey = Survey.find_by_id(survey_id)
		
		if survey.present?
			# if user visit this survey first time then need to store detail in db
			if params[:survey][:next_task].present? and  params[:survey][:next_task].to_i == 0
				user = UserDevice.find_by(:device_id=>device_id,:device_type=>device_type)
				if !user.present? 
				  user = UserDevice.create(device_id:device_id,device_type:device_type)
				end 
				user_survey = UserSurvey.find_by(:user_device_id=>user.id,:survey_id=>survey.id)
				if !user_survey.present?
					user_survey = UserSurvey.create(user_device_id:user.id,:survey_id=>survey.id)
				end
			end 			

			@tasks  = survey.tasks.find_in_batches(start:params[:survey][:next_task].to_i + 1,batch_size:50)
			@tasks = @tasks.first 	
			if @tasks.last.id != survey.tasks.last.id 
				@next_task = @tasks.last.id
				
			end
			@total_task = @tasks.count  
		else
			render_json({:result=>{:messages => "No Survey Found" , :rstatus=>0, :errorcode => 0}}.to_json)
		end 
	end 


end 


