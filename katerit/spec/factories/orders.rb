# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    user_id 1
    event_address "MyString"
    event_datetime "2013-03-03 14:56:20"
  end
end
