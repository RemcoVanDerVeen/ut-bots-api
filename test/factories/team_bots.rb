FactoryBot.define do
  factory :team_bot do
    bot
    team
    position { 1 }
    is_enabled { true }
    is_captain { false }
    is_human { false }

    trait :captain do
      is_captain { true }
    end

    trait :human do
      is_human { true }
    end

    trait :disabled do
      is_enabled { false }
    end
  end
end
