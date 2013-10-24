module AmazonServices
	extend ActiveSupport::Concern

	module Advertising
	  	include ASIN::Client

		def self.fetch_books_by_keywords(args)
			parse_books ASIN::Client.instance.search_keywords(args)
		end

		private
		def self.parse_books(content)
			BookParser.parse(content)
		end
	end

end