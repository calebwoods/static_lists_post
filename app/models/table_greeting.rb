class TableGreeting < ActiveRecord::Base
  has_many :people

  validates :value, presence: true, uniqueness: true
end
