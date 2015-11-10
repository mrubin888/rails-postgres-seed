require 'spec_helper'
require 'rails_helper'

describe Api::V1::Todoitem do
	it "has a valid factory" do
		expect(FactoryGirl.create(:api_v1_todoitem)).to be_valid
	end
	it "is invalid without text" do
		expect(FactoryGirl.build(:api_v1_todoitem, text: nil)).to_not be_valid
	end
	it "returns a todoitem's text as a string" do
		contact = FactoryGirl.build(:api_v1_todoitem)
		expect(contact.text).to be_instance_of(String)
	end
end