require 'spec_helper'

describe EnumPerson do
  describe "#greeting" do
    it "it is set based on the greeting_id" do
      person = FactoryGirl.build_stubbed(:enum_person)
      person.greeting = :hi
      expect(person.greeting_value).to eq 'Hi'
    end

    it "does not allow blank values" do
      person = FactoryGirl.build_stubbed(:enum_person)
      person.greeting = nil
      expect(person).not_to be_valid
    end

    it "must be set to a valid greeting" do
      person = FactoryGirl.build_stubbed(:enum_person)
      expect {
        person.greeting = 'invalid'
      }.to raise_exception(ArgumentError)
    end
  end
end
