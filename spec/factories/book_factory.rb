FactoryGirl.define do
	
  factory :book do
	title 'Some Title'
	author 'Some Author'
	publisher 'Some Publisher'
	publication_date Date.new(2013, 10, 22)
	edition 'Some Edition'
	price '$40.00'
	format 'Some Format'
	url 'Some Url'
	image_url 'Some img'
  end

end