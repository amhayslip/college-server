require 'spec_helper'

shared_examples_for AmazonServices do

  let(:client) { ASIN::Client.instance }
  let(:asin) { '1430218150' }
  let(:keyword) { 'objective-c' }

  context "Advertising" do

    it 'should be able to connect to the services using the credentials' do
      expect(client.nil?).to be false
    end

    it 'should be able to reetrive a books based in your code' do
      expect(client.lookup(asin)).to be_a_kind_of(Array)
    end

   	it 'should be able to search a book by title' do
   		result = client.search_keywords(keyword).first.title
		  expect(result.downcase).to include(keyword)
	end

  end
end

describe Book do
  it_behaves_like AmazonServices
end