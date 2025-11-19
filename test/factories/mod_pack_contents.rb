FactoryBot.define do
  factory :mod_pack_content do
    mod_pack
    content factory: %i[weapon]

    trait :with_map do
      content factory: %i[map]
    end

    trait :with_mutator do
      content factory: %i[mutator]
    end

    trait :with_bot do
      content factory: %i[bot]
    end
  end
end
