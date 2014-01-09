# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    title "MyString"
    amount "9.99"
    comment "MyText"
  end
end
