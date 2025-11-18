FactoryBot.define do
  factory :player_model do
    name { "Male Soldier" }
    description { "Standard male soldier" }
    ut_value { "MaleSoldier" }
    vanilla { true }

    trait :female do
      name { "Female Soldier" }
      description { "Standard female soldier" }
      ut_value { "FemaleSoldier" }
    end

    trait :robot do
      name { "Boss" }
      description { "Robot character" }
      ut_value { "Boss" }
    end

    trait :custom do
      vanilla { false }
    end
  end
end
