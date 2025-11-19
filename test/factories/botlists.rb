FactoryBot.define do
  factory :botlist do
    name { "Default Botlist" }
    description { "Default bot configuration" }
    is_enabled { true }

    trait :disabled do
      is_enabled { false }
    end
  end
end
