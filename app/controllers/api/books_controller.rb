class Api::BooksController < ApplicationController

	def search
		if params[:q].present?
			render json: Book.find(params[:q])
		else
			render_errors
		end
	end
end
