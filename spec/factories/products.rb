FactoryBot.define do
  factory :product do
    name { Faker::StarWars.character }
    category_id nil
  end
end
