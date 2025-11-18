FactoryBot.define do
  factory :mod_pack do
    name { "Weapon Pack 1" }
    mod_type
    mod_sub_type

    trait :without_sub_type do
      mod_sub_type { nil }
    end
  end
end
