FactoryBot.define do
  factory :post do
    user { nil }
    text { "MyText" }
    category { nil }
  end
end
