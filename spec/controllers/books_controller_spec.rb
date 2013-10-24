require 'spec_helper'

describe Api::BooksController do

  	let(:keyword) { 'rails'}
  	let(:book_json) { FactoryGirl.attributes_for(:book) }

  	context "Search a Book" do
  		#use the custom matcher located in support/matchers folder
	    it "should return a JSON with books found by title" do
	    	response = json_get(:search, { q: keyword})
	    	expect(response['books'].first).to have_keys(book_json)
	    end
	end

	context "Missing Query Parameter" do

	    it "should return a error JSON if the parameter is empty" do
	    	response = json_get(:search, { q: ""})
	    	expect(response.to_json).to eql('{"error":"empty book keywords"}')
	    end

	  	it "should return a error JSON if the parameter is nil" do
	  		response = json_get(:search, { q: ""})
	     	expect(response.to_json).to eql('{"error":"empty book keywords"}')
	    end

	end

end
