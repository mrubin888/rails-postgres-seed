require 'faker' 

FactoryGirl.define do
	factory :api_v1_todoitem, :class => 'Api::V1::Todoitem' do |testitem|
		testitem.text { Faker::Lorem.sentence }
	end
end