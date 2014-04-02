FactoryGirl.define do
  factory :table_greeting do
    value 'Hi'
  end

  factory :table_person do
    table_greeting
  end

  factory :module_person do
    greeting_id { Greeting::Hi }
  end

  factory :enum_person do
    greeting :hi
  end
end

