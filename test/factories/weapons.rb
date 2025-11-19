FactoryBot.define do
  factory :weapon do
    name { "Shock Rifle" }
    description { "Energy weapon" }
    ut_value { "ShockRifle" }
    vanilla { true }

    trait :flak_cannon do
      name { "Flak Cannon" }
      description { "Heavy weapon" }
      ut_value { "FlakCannon" }
    end

    trait :custom do
      vanilla { false }
    end
  end
end
