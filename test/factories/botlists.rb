FactoryBot.define do
  factory :botlist do
    name { "Default Botlist" }
    description { "Default bot configuration" }
    is_enabled { true }
    xbots_configuration

    trait :disabled do
      is_enabled { false }
    end

    trait :without_configuration do
      xbots_configuration { nil }
    end
  end
end
