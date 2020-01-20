FactoryBot.define do
  factory :movie do
    title { Faker::Movies::HarryPotter.book }
    year { Faker::Date.between(from: 2.days.ago, to: Date.today) }
  end
end
