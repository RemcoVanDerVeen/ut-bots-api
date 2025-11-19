FactoryBot.define do
  factory :botlist_bot do
    bot
    botlist
    position { 1 }
    is_enabled { true }

    trait :disabled do
      is_enabled { false }
    end
  end
end
