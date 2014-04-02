require 'spec_helper'

describe TablePerson do
  describe '#table_greeting' do
    context 'required' do
      let(:person) { build(:table_person, table_greeting: nil) }
      specify { expect(person).not_to be_valid }
    end
  end
end
