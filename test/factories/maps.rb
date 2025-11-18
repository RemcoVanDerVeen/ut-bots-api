FactoryBot.define do
  factory :map do
    name { "DM-Deck16" }
    description { "Classic deathmatch map" }
    game_mode

    trait :ctf_map do
      name { "CTF-Face" }
      description { "Classic CTF map" }
      association :game_mode, strategy: :build, traits: [ :ctf ]
    end

    trait :without_game_mode do
      game_mode { nil }
    end
  end
end
