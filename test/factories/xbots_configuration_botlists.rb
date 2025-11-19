FactoryBot.define do
  factory :xbots_configuration_botlist do
    xbots_configuration
    botlist
    position { 1 }
    is_enabled { true }

    trait :disabled do
      is_enabled { false }
    end
  end
end
