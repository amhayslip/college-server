require 'rspec/expectations'

RSpec::Matchers.define :have_keys do |expected|
  match do |acutal|
    actual.symbolize_keys.keys - expected.symbolize_keys.keys == []
  end

  failure_message_for_should do |actual|
    "expected that #{actual.keys} would be equals of #{expected.keys}"
  end

end