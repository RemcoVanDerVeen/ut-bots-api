FactoryBot.define do
  factory :author_authorable do
    author
    authorable factory: %i[bot]

    trait :for_weapon do
      authorable factory: %i[weapon]
    end

    trait :for_map do
      authorable factory: %i[map]
    end

    trait :for_mod_pack do
      authorable factory: %i[mod_pack]
    end
  end
end
