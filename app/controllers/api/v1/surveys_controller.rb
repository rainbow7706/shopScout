class Api::V1::SurveysController < Api::V1::BaseController


	def get_surveys
		render_json({:result=>{:messages => ["Got the method"], :rstatus=>0, :errorcode => 0}}.to_json)
	end 

end 


