FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:content) { |n| "Content #{n}" }
    sequence(:slug) {|n| "slug-#{n}" }
  end
end
