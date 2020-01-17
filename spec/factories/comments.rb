FactoryBot.define do
  factory :comment do
    user { nil }
    text { "MyText" }
    date { "2020-01-17" }
  end
end
