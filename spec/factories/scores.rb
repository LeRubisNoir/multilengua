# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :score do
    user_id 1
    score 1
    exo_id 1
    session "MyText"
  end
end
