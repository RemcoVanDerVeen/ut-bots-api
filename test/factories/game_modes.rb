FactoryBot.define do
  factory :game_mode do
    name { "Deathmatch" }
    description { "Free-for-all combat" }
    ut_value { "DeathMatch" }
    vanilla { true }

    trait :ctf do
      name { "Capture The Flag" }
      description { "Team-based flag capture" }
      ut_value { "CTFGame" }
    end

    trait :custom do
      vanilla { false }
    end
  end
end
