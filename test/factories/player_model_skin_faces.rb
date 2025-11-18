FactoryBot.define do
  factory :player_model_skin_face do
    player_model_skin
    name { "Face 1" }
    description { "Default face" }
    ut_value { "Face1" }
    vanilla { true }

    trait :custom do
      vanilla { false }
    end
  end
end
