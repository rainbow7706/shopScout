Rails.application.routes.draw do

  get "api_help/index"
  
  namespace :api, :defaults => {:format => 'json'} do
    scope :module => :v1 do
     end
  end 

end
