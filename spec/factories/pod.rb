FactoryBot.define do
  factory :pod do
    ip { Faker::Internet.email } 
    name  { Faker::Name.name }
    trait :published do
      status { :published } 
    end  
  end
end