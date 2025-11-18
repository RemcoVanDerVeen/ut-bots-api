FactoryBot.define do
  factory :combat_style do
    name { "Aggressive" }
    description { "Aggressive fighting style" }
    ut_value { 0.5 }

    trait :defensive do
      name { "Defensive" }
      description { "Defensive fighting style" }
      ut_value { -0.5 }
    end

    trait :balanced do
      name { "Balanced" }
      description { "Balanced fighting style" }
      ut_value { 0.0 }
    end
  end
end
