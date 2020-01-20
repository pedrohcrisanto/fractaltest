FactoryBot.define do
  factory :actor do
    name { Faker::Name.name }
    user { User.all.sample }
  end
end
