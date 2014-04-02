shared_examples 'Greeting' do
  def factory_name
    described_class.to_s.tableize.singularize
  end

  describe "#greeting" do
    it "it is set based on the greeting_id" do
      greeting = Greeting::Collection.first
      record = FactoryGirl.build_stubbed(factory_name)
      record.greeting_id = greeting.id
      expect(record.greeting_value).to eq greeting.value
    end

    it "handles other greeting" do
      record = FactoryGirl.build_stubbed(factory_name)
      record.greeting_id = Greeting::Other.id
      record.greeting_other = 'Howdy'
      expect(record.greeting_value).to eq 'Howdy'
      expect(record).to be_valid
    end

    it "does not allow blank values" do
      record = FactoryGirl.build_stubbed(factory_name)
      record.greeting_id = nil
      expect(record).not_to be_valid
    end

    it "must be set to a valid greeting" do
      record = FactoryGirl.build_stubbed(factory_name)
      record.greeting_id = 'invalid'
      expect(record).not_to be_valid
    end
  end
end
