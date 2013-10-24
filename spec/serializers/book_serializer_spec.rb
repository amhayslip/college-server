require 'spec_helper'
 
describe BookSerializer, type: :serializer do

	let(:attributes) { { title: "Some Title", author: "Some Author", publisher: "Some Publisher",
		  	             publication_date: Date.new(2013, 10, 22), edition: "Some Edition",
						 price: "$40.00", format: "Some Format", url: "Some Url",
		  				 image_url: "Some img"
					  } }

	let(:book_json) { '{"book":' + FactoryGirl.json(:book) + '}'  }

	it "creates JSON based in the Book" do
    	serializer = BookSerializer.new Book.new(attributes)
    	expect(serializer.to_json).to eql(book_json)
  	end
end
