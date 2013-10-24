class ApplicationController < ActionController::Base

  protect_from_forgery with: :null_session


  def render_errors(error = 'empty book keywords', status = :unprocessable_entity)
  	render json: { :error => error }.to_json, status: status
  end
  
end
