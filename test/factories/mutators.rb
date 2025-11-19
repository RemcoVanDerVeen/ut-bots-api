FactoryBot.define do
  factory :mutator do
    name { "InstaGib" }
    description { "One-hit kills" }
    game_mode

    trait :low_gravity do
      name { "Low Gravity" }
      description { "Reduced gravity" }
    end

    trait :without_game_mode do
      game_mode { nil }
    end
  end
end
