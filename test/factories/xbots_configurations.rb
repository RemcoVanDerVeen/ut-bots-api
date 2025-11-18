FactoryBot.define do
  factory :xbots_configuration do
    name { "Default Configuration" }
    description { "Default XBots configuration" }
    is_active { false }
    is_enabled { true }
    position { 1 }

    trait :active do
      is_active { true }
    end

    trait :disabled do
      is_enabled { false }
    end
  end
end
