VANILLA_GAME_MODES = [
  { name: 'Deathmatch', description: 'Free-for-all combat', ut_value: 'DM', vanilla: true },
  { name: 'Capture The Flag', description: 'Team-based flag capture', ut_value: 'CTF', vanilla: true },
  { name: 'Team Deathmatch', description: 'Team-based free-for-all combat', ut_value: 'TDM', vanilla: true },
  { name: 'Last Man Standing', description: 'Last man standing wins', ut_value: 'LMS', vanilla: true },
  { name: 'Domination', description: 'Capture and hold control points', ut_value: 'DOM', vanilla: true },
  { name: 'Assault', description: 'Capture and defend objectives', ut_value: 'AS', vanilla: true }
].freeze

CUSTOM_GAME_MODES = [
  { name: 'Jailbreak', description: 'Escape from jail', ut_value: 'JB', vanilla: false },
  { name: 'MultiTeam CTF', description: 'Multiple Capture The Flags', ut_value: 'MCTF', vanilla: false },
  { name: 'Rocket Arena: UT', description: 'Rocket Arena for UT', ut_value: 'RA', vanilla: false }
].freeze

puts "Creating game modes..."

VANILLA_GAME_MODES.each do |game_mode_attrs|
  GameMode.where(**game_mode_attrs).first_or_create! do |game_mode|
    puts "***#{game_mode.name} added!***"
  end
end

CUSTOM_GAME_MODES.each do |game_mode_attrs|
  GameMode.where(**game_mode_attrs).first_or_create! do |game_mode|
    puts "***#{game_mode.name} added!***"
  end
end

puts "\n"
