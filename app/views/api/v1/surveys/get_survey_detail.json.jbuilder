json.result do
	  json.messages "ok"
	  json.rstatus  "1"
	  json.errorcode ""
end
json.data do
		json.survey do
	   		json.survey_id          @survey.id
				json.survey_title				@survey.title
				json.survey_description @survey.description
				json.survey_start_date  @survey.start_date
				json.survey_end_date		@survey.end_date
				json.survey_type				Survey::TYPE[@survey.survey_type]
				json.survey_is_active		@survey.is_active == 1 ? "yes" : "no"
		end
end 
	