# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dish do
    name "MyString"
    serves 1
    price "9.99"
    restaurant ""
    category ""
  end
end
