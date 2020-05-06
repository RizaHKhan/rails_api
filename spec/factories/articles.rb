FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "My awesome article #{n}" }
    sequence(:content) { |n| "MyText #{n}" }
    sequence(:slug) {|n| "my-awesome-slug-#{n}" }
  end
end
