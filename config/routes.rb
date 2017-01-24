Rails.application.routes.draw do

  get "api_help/index"
  
  namespace :api, :defaults => {:format => 'json'} do
    scope :module => :v1 do
     	get "get_all_surveys", to:"surveys#get_all_surveys"
     	get "get_global_surveys", to:"surveys#get_global_surveys"
	 		get "get_local_surveys", to:"surveys#get_local_surveys"
	 		get "get_available_surveys", to:"surveys#get_available_surveys"
	 		get "get_completed_surveys", to:"surveys#get_completed_surveys"
	 		get "get_survey_detail",to:"surveys#get_survey_detail"
	 		get "get_survey_tasks", to:"surveys#get_survey_tasks"
     end
  end 

end
