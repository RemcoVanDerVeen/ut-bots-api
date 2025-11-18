FactoryBot.define do
  factory :player_model_skin do
    player_model
    name { "Commando Skin 1" }
    description { "Default commando skin" }
    ut_value { "Commando1" }
    has_all_colours { true }
    vanilla { true }

    trait :custom do
      vanilla { false }
      has_all_colours { false }
    end
  end
end
