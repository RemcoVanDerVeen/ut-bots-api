FactoryBot.define do
  factory :map do
    name { "DM-Deck16" }
    description { "Classic deathmatch map" }

    trait :ctf_map do
      name { "CTF-Face" }
      description { "Classic CTF map" }
    end
  end
end
