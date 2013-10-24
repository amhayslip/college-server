require "spec_helper"

describe Book do

  let(:attributes) { { title: "Ruby on Rails 4.0 Guide",author: "Stefan Wintermeyer",
                       format: "Paperback"}}

  let(:keyword) { 'rspec' }

  subject do
    Book.find(keyword)
  end

  it "can be instantiated with a hash of params" do
    book = Book.new(attributes)
  	expect(book.nil?).to be false
  end

  it "can be able to access the amazon service and search a book" do
	  expect(subject.first.title.downcase).to include(keyword)
  end

  it "should return a array of books by book title" do
     expect(subject.size).to be > 0
  end
  
end