MUTATOR_GAME_MODES = [
  DEATHMATCH = [ 'DM', 'TDM', 'LMS' ],
  DOMINATION = [ 'DOM' ],
  ASSAULT = [ 'AS' ],
  CAPTURE_THE_FLAG = [ 'CTF' ]
].freeze

MUTATOR_AUTHORS = [
  EPIC_GAMES = { nickname: 'Epic Games' },
  DIGITAL_EXTREMES = { nickname: 'Digital Extremes' },
  CHAOTIC_DREAMS = { nickname: 'Chaotic Dreams' }
]

# Author: Epic Games
VANILLA_MUTATORS = [
  { name: 'Flak Cannon Arena', description: 'Replaces all weapons with the Flak Cannon' },
  { name: 'Pulse Gun Arena', description: 'Replaces all weapons with the Pulse Gun' },
  { name: 'Rocket Launcher Arena', description: 'Replaces all weapons with the Rocket Launcher' },
  { name: 'Shock Rifle Arena', description: 'Replaces all weapons with the Shock Rifle' },
  { name: 'Sniper Rifle Arena', description: 'Replaces all weapons with the Sniper Rifle' },
  { name: 'BigHead', description: 'Killing raises the size of your head, being killed reduces it.' },
  { name: 'Chainsaw Melee', description: 'The chainsaw replaces the Impact Hammer' },
  { name: 'FatBoy', description: 'Killing raises the size of your body, being killed reduces it.' },
  { name: 'Hyper Speed', description: 'The speed of the game is raised to 150%.' },
  { name: 'Instagib DM', description: 'Players get the Enhanced Shock Rifle. All other weapons and ammo are removed.' },
  { name: 'Low Gravity', description: 'Reduces the gravity of the map.' },
  { name: 'Instant Rockets', description: 'Rockets can only be fired one at a time.' },
  { name: 'Jump Match', description: 'Players can jump extremely high.' },
  { name: 'No Powerups', description: 'All powerups are removed.' },
  { name: 'No Redeemer', description: 'The Redeemer is removed.' },
  { name: 'Slomo', description: 'The speed of the game is slowed down to 50%.' },
  { name: 'Stealth', description: 'Makes everyone invisible.' }

].freeze

# Author: Digital Extremes
DE_BONUS_PACK_MUTATORS = [
  { name: 'Relics', description: 'Add relics to the match.' }
].freeze

# Author: Epic Games
EPIC_BONUS_PACK_MUTATORS = [
  { name: 'Team Beacon', description: 'Team mates have a beacon above their head.' },
  { name: 'Volatile Ammo', description: 'Ammo explodes when hit by a weapon.' },
  { name: 'Volatile Weapons', description: 'Weapons are discharged when a player dies.' }
].freeze

# Author: Chaotic Dreams
CHAOS_UT_MUTATORS = [
  { name: 'Chaos UT', description: 'Replaces vanilla UT weapons with Chaos UT weapons.' },
  { name: 'No Health', description: 'Removes all health pickups from the map.' },
  { name: 'Sword Arena', description: 'Replaces all weapons with the Chaos UT Bastard Sword.' },
  { name: 'Sword Melee', description: 'The Chaos UT Bastard Sword replaces the Impact Hammer' }
].freeze

VANILLA_MUTATORS.each do |mutator_attrs|
  Mutator.where(**mutator_attrs).first_or_create! do |mutator|
    mutator.vanilla = true
    mutator.save!
    puts "***#{mutator.name} added!***"

    author = Author.where(nickname: EPIC_GAMES[:nickname]).first_or_create!
    puts "***#{mutator.name} author: #{author.nickname}!***"
    mutator.authors << author
  end
end

puts "\n"

DE_BONUS_PACK_MUTATORS.each do |mutator_attrs|
  Mutator.where(**mutator_attrs).first_or_create! do |mutator|
    puts "***#{mutator.name} added!***"

    author = Author.where(nickname: DIGITAL_EXTREMES[:nickname]).first_or_create!
    puts "***#{mutator.name} author: #{author.nickname}!***"
    mutator.authors << author
  end
end

puts "\n"

EPIC_BONUS_PACK_MUTATORS.each do |mutator_attrs|
  Mutator.where(**mutator_attrs).first_or_create! do |mutator|
    puts "***#{mutator.name} added!***"

    author = Author.where(nickname: EPIC_GAMES[:nickname]).first_or_create!
    puts "***#{mutator.name} author: #{author.nickname}!***"
    mutator.authors << author
  end
end

puts "\n"

CHAOS_UT_MUTATORS.each do |mutator_attrs|
  Mutator.where(**mutator_attrs).first_or_create! do |mutator|
    puts "***#{mutator.name} added!***"

    author = Author.where(nickname: CHAOTIC_DREAMS[:nickname]).first_or_create!
    puts "***#{mutator.name} author: #{author.nickname}!***"
    mutator.authors << author
  end
end
