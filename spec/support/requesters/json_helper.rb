module JsonHelper
  
  def json_get(action, params = {})
    get(action, params)
    JSON.parse(response.body) unless response.body.blank?
  end
  
  def json_post(action, params = {})
    post(action, params.merge(format: :json))
    JSON.parse(response.body) unless response.body.blank?
  end
  
  def json_put(action, params = {})
    put(action, params.merge(format: :json))
    JSON.parse(response.body) unless response.body.blank?
  end
  
  def json_delete(action, params = {})
    delete(action, params.merge(format: :json))
    JSON.parse(response.body) unless response.body.blank?
  end
end