class BookSerializer < ActiveModel::Serializer
	
	attributes :title, :author, :publisher, :publication_date, 
	           :edition, :price, :format, :url, :image_url

end