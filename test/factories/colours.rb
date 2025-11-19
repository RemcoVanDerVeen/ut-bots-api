FactoryBot.define do
  factory :colour do
    name { "Red" }
    hex { "#FF0000" }
    rgb { "255,0,0" }
    is_team_colour { false }

    trait :team_colour do
      is_team_colour { true }
      ut_value { 0 }
    end

    trait :blue do
      name { "Blue" }
      hex { "#0000FF" }
      rgb { "0,0,255" }
    end

    trait :minimal do
      name { "Custom" }
      hex { nil }
      rgb { nil }
    end
  end
end
