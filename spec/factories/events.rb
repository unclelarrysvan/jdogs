# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    customer_id 1
    start_datetime "2014-04-29 19:31:11"
  end
end
