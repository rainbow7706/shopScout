if @surveys.present?
	json.result do
	  json.messages "ok"
	  json.rstatus  "1"
	  json.errorcode ""
	end
	json.data do
		json.surveys do
	    json.array!  @surveys.each do |survey|
				json.survey_id          survey.id
				json.survey_title				survey.title
			end
		end 
	end
else 
	json.result do
	  json.messages "ok"
	  json.rstatus  "1"
	  json.errorcode ""
	end
	json.data do 
	  json.message "No data found..."
	end 	  
end 
