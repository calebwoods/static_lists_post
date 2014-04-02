require 'spec_helper'

describe TableGreeting do
  describe '#value' do
    context 'must be set' do
      let(:greeting) { build(:table_greeting, value: nil) }
      specify { expect(greeting).not_to be_valid }
    end

    context 'must be unique' do
      let!(:existing) { create(:table_greeting, value: 'Hi') }
      let(:greeting) { build(:table_greeting, value: 'Hi') }
      specify { expect(greeting).not_to be_valid }
    end
  end
end
