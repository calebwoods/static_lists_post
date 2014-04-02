class EnumPerson < ActiveRecord::Base
  enum greeting: { hi: 1, hello: 2, dear: 3 }

  validates :greeting, presence: true

  def greeting_value
    greeting.capitalize
  end
end
