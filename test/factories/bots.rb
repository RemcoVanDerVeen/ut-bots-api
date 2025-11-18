FactoryBot.define do
  factory :bot do
    name { "TestBot" }
    has_jumpy_behaviour { false }
    skill_adjust { 0 }
    bot_accuracy { 0 }
    alertness { 0 }
    camping { 0 }
    strafing_ability { 0 }

    combat_style
    model factory: %i[player_model]
    skin factory: %i[player_model_skin]
    face factory: %i[player_model_skin_face]
    voice_pack
    colour

    trait :skilled do
      skill_adjust { 2 }
      bot_accuracy { 0.8 }
      alertness { 0.7 }
      strafing_ability { 0.75 }
    end

    trait :jumpy do
      has_jumpy_behaviour { true }
    end

    trait :camper do
      camping { 0.8 }
    end

    trait :with_favourite_weapon do
      favourite_weapon factory: %i[weapon]
    end

    trait :without_colour do
      colour { nil }
    end
  end
end
