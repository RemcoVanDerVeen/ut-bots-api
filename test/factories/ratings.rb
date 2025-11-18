FactoryBot.define do
  factory :rating do
    value { 5 }
    rateable factory: %i[bot]

    trait :high do
      value { 9 }
    end

    trait :low do
      value { 2 }
    end

    trait :for_weapon do
      rateable factory: %i[weapon]
    end

    trait :for_map do
      rateable factory: %i[map]
    end
  end
end
