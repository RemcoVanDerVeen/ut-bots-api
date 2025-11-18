FactoryBot.define do
  factory :voice_pack do
    name { "Male One" }
    description { "Standard male voice" }
    ut_value { "MaleOne" }
    has_all_sounds { true }
    vanilla { true }

    trait :female do
      name { "Female One" }
      description { "Standard female voice" }
      ut_value { "FemaleOne" }
    end

    trait :custom do
      vanilla { false }
      has_all_sounds { false }
    end
  end
end
