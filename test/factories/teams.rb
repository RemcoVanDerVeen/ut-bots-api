FactoryBot.define do
  factory :team do
    name { "Red Team" }
    description { "The red team" }

    trait :blue_team do
      name { "Blue Team" }
      description { "The blue team" }
    end
  end
end
