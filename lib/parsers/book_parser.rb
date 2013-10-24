module BookParser

	def self.parse(content)
		content.map { |item| Book.new(book_parameters(item)) unless item.raw.ItemAttributes.empty? } 
	end

	private
	def self.book_parameters(item)
		{ title: item.title,
		  author: item.raw.ItemAttributes.Author,
		  publisher: item.raw.ItemAttributes.Publisher,
		  publication_date: item.raw.ItemAttributes.PublicationDate,
		  edition: item.raw.ItemAttributes.Edition,
	      price: format_price(item.raw.ItemAttributes.ListPrice),
		  format: item.raw.ItemAttributes.Binding,
		  url: item.details_url,
		  image_url: item.image_url
		}
	end

	def self.format_price(listPrice)
		listPrice.nil? ? "" : listPrice.FormattedPrice
	end

end