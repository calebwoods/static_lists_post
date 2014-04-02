module Greeting
  extend ActiveSupport::Concern

  Hi    = StaticValue.new(1, 'Hi')
  Hello = StaticValue.new(2, 'Hello')
  Dear  = StaticValue.new(3, 'Dear')
  Other = StaticValue.new(4, 'Other')

  Collection = constants.map { |const_sym| const_get(const_sym) }
  FormOptions = Collection.map { |greeting| [ greeting.value, greeting.id ] }
  All = Collection.map(&:id)

  included do
    validates :greeting_id, presence: true, inclusion: { in: Greeting::All }
  end

  def greeting
    Greeting::Collection.detect { |greeting| greeting.id == greeting_id }
  end

  def greeting_value
    greeting == Greeting::Other ? greeting_other : greeting.value
  end
end

