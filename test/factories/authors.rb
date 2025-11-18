FactoryBot.define do
  factory :author do
    name { "John Doe" }
    nickname { "johndoe" }

    trait :with_name do
      name { Faker::Name.name }
      nickname { Faker::Internet.username }
    end
  end
end
