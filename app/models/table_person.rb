class TablePerson < ActiveRecord::Base
  belongs_to :table_greeting, class_name: 'TableGreeting'

  validates :table_greeting, presence: true

  delegate :value, to: :table_greeting, prefix: true
end
