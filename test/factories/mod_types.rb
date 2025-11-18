FactoryBot.define do
  factory :mod_type do
    name { "Weapons" }

    trait :maps do
      name { "Maps" }
    end

    trait :mutators do
      name { "Mutators" }
    end
  end
end
