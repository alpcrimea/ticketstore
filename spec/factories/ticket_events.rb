# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket_event do
    reply "MyString"
    from_client false
  end
end
