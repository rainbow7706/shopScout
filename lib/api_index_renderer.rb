class ApiIndexRenderer
  attr_reader :name, :link_ref, :method_type

  def initialize(name, link_ref, method_type)
    @name        = name
    @link_ref    = link_ref
    @method_type = method_type
  end
  # index for api help...
  class << self
    def user_api_index
      index_arr = []
      index_arr << ApiIndexRenderer.new("get_all_surveys", "get_all_surveys", "GET")     
      index_arr << ApiIndexRenderer.new("get_global_surveys", "get_global_surveys", "GET")     
      index_arr << ApiIndexRenderer.new("get_local_surveys", "get_local_surveys", "GET")     
      index_arr << ApiIndexRenderer.new("get_available_surveys", "get_available_surveys", "GET")     
      index_arr << ApiIndexRenderer.new("get_completed_surveys", "get_completed_surveys", "GET")     
      index_arr << ApiIndexRenderer.new("get_survey_detail", "get_survey_detail", "GET")     
      index_arr << ApiIndexRenderer.new("get_survey_tasks", "get_survey_tasks", "GET")     
      index_arr
    end
  end
end