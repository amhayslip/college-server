require 'active_model'

class Book
	include AmazonServices
	include ActiveModel::Serialization

   attr_accessor :title, :author, :publisher, :publication_date, :edition,
   				 :price, :format, :url, :image_url

	def initialize(attributes = {})
		@title = attributes[:title]
		@author = attributes[:author]
		@publisher = attributes[:publisher]
		@publication_date = attributes[:publication_date]
		@edition = attributes[:edition]
		@price = attributes[:price]
		@format = attributes[:format]
		@url = attributes[:url]
		@image_url = attributes[:image_url]
	end
	
	def active_model_serializer
      BookSerializer
 	end

   def self.find(args)
   	  AmazonServices::Advertising.fetch_books_by_keywords(args)
   end
end
