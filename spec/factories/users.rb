FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "jsmith#{n}@gmail.com" }
    sequence(:name) { |n| "Person#{n} Doe" }
    sequence(:url) { |n| "http://www.#{n}example.com" }
    sequence(:avatar_url) { |n| "http://www.#{n}example.com/avatar" }
    sequence(:provider) { |n| "github" }
  end
end
