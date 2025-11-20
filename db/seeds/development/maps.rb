AUTHORS = [
  ALAN_WILLARD = { name: 'Alan Willard', nickname: 'Talisman' },
  CEDRIC_FIORENTINO = { name: 'Cedric Fiorentino', nickname: 'Inoxx' },
  CLAUDE_MEYER = { name: 'Claude Meyer', nickname: 'Claude Meyer' },
  CLIFF_BLESZINSKI = { name: 'Cliff Bleszinski', nickname: 'Cliff Bleszinski' },
  DAVE_EWING = { name: 'Dave Ewing', nickname: 'Dave Ewing' },
  ELLIOT_CANNON = { name: 'Elliot Cannon', nickname: 'Myscha' },
  ERIC_BOLTJES = { name: 'Eric Boltjes', nickname: 'Ebolt' },
  JUAN_PANCHO_EEKELS = { name: 'Juan Pancho Eekels', nickname: 'XceptOne' },
  PAUL_M_BIAKA = { name: 'Paul M\'Biaka', nickname: 'AcidPablo' },
  PHIL_COLE = { name: 'Phil Cole', nickname: 'Phil Cole' },
  RICH_EASTWOOD = { name: 'Rich Eastwood', nickname: 'Akuma' },
  ROGELIO_OLGUIN = { name: 'Rogelio Olguin', nickname: 'Rogelio Olguin' },
  SHANE_CAUDLE = { name: 'Shane Caudle', nickname: 'Shane Caudle' },
  SIDNEY_RAUCHBERGER = { name: 'Sidney Rauchberger', nickname: 'Clawfist' },
  WARREN_MARSHALL = { name: 'Warren Marshall', nickname: 'Warren Marshall' }
].freeze

GAME_MODES = [
  DEATHMATCH = [ 'DM', 'TDM', 'LMS' ],
  DOMINATION = [ 'DOM' ],
  ASSAULT = [ 'AS' ],
  CAPTURE_THE_FLAG = [ 'CTF' ]
].freeze

VANILLA_DEATHMATCH_MAPS = [
  { name: 'DM-Barricade', description: 'Orion\'s Barricade', vanilla: true, min_players: 6, max_players: 12, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH },
  { name: 'DM-Codex', description: 'Codex of Wisdom', vanilla: true, min_players: 2, max_players: 8, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH },
  { name: 'DM-Conveyor', description: 'Conveyor', vanilla: true, min_players: 6, max_players: 12, authors: [ SHANE_CAUDLE ], game_modes: DEATHMATCH },
  { name: 'DM-Curse][', description: 'Curse][', vanilla: true, min_players: 4, max_players: 12, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH },
  { name: 'DM-Deck16][', description: 'Deck16][', vanilla: true, min_players: 2, max_players: 16, authors: [ ELLIOT_CANNON ], game_modes: DEATHMATCH },
  { name: 'DM-Fetid-Deck', description: 'Fetid Sewers', vanilla: true, min_players: 2, max_players: 6, authors: [ CEDRIC_FIORENTINO ], game_modes: DEATHMATCH },
  { name: 'DM-Fractal', description: 'Fractal Reactor', vanilla: true, min_players: 2, max_players: 4, authors: [ DAVE_EWING ], game_modes: DEATHMATCH },
  { name: 'DM-Gothic', description: 'Gothic Palace', vanilla: true, min_players: 6, max_players: 16, authors: [ SHANE_CAUDLE ], game_modes: DEATHMATCH },
  { name: 'DM-Grinder', description: 'Grinder', vanilla: true, min_players: 4, max_players: 10, authors: [ ELLIOT_CANNON ], game_modes: DEATHMATCH },
  { name: 'DM-HyperBlast', description: 'HyperBlast', vanilla: true, min_players: 2, max_players: 8, authors: [ CEDRIC_FIORENTINO, JUAN_PANCHO_EEKELS ], game_modes: DEATHMATCH },
  { name: 'DM-KGalleon', description: 'Koos Galleon', vanilla: true, min_players: 4, max_players: 12, authors: [ JUAN_PANCHO_EEKELS ], game_modes: DEATHMATCH },
  { name: 'DM-Liandri', description: 'Liandri Central Core', vanilla: true, min_players: 2, max_players: 14, authors: [ ALAN_WILLARD ], game_modes: DEATHMATCH },
  { name: 'DM-Morbias][', description: 'Morbias][', vanilla: true, min_players: 2, max_players: 6, authors: [ ELLIOT_CANNON ], game_modes: DEATHMATCH },
  { name: 'DM-Morpheus', description: 'Morpheus', vanilla: true, min_players: 3, max_players: 6, authors: [ DAVE_EWING ], game_modes: DEATHMATCH },
  { name: 'DM-Oblivion', description: 'Oblivion', vanilla: true, min_players: 2, max_players: 3, authors: [ JUAN_PANCHO_EEKELS ], game_modes: DEATHMATCH },
  { name: 'DM-Peak', description: 'The Peak Monastery', vanilla: true, min_players: 6, max_players: 8, authors: [ JUAN_PANCHO_EEKELS ], game_modes: DEATHMATCH },
  { name: 'DM-Phobos', description: 'Phobos Moon', vanilla: true, min_players: 4, max_players: 8, authors: [ CEDRIC_FIORENTINO ], game_modes: DEATHMATCH },
  { name: 'DM-Pressure', description: 'Pressure', vanilla: true, min_players: 4, max_players: 12, authors: [ JUAN_PANCHO_EEKELS ], game_modes: DEATHMATCH },
  { name: 'DM-Pyramid', description: 'Floating Pyramid', vanilla: true, min_players: 8, max_players: 8, authors: [ CEDRIC_FIORENTINO ], game_modes: DEATHMATCH },
  { name: 'DM-Stalwart', description: 'Stalwart', vanilla: true, min_players: 2, max_players: 3, authors: [ ALAN_WILLARD ], game_modes: DEATHMATCH },
  { name: 'DM-StalwartXL', description: 'Stalwart XL', vanilla: true, min_players: 4, max_players: 6, authors: [ ALAN_WILLARD ], game_modes: DEATHMATCH },
  { name: 'DM-Tempest', description: 'Tempest', vanilla: true, min_players: 4, max_players: 16, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH },
  { name: 'DM-Turbine', description: 'Turbine', vanilla: true, min_players: 4, max_players: 8, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH },
  { name: 'DM-Zeto', description: 'Ice Station Zeto', vanilla: true, min_players: 4, max_players: 12, authors: [ ALAN_WILLARD ], game_modes: DEATHMATCH }
].freeze

VANILLA_DOMINATION_MAPS = [
  { name: 'DOM-Cinder', description: 'Cinder Foundry', vanilla: true, min_players: 6, max_players: 12, authors: [ CLIFF_BLESZINSKI ], game_modes: DOMINATION },
  { name: 'DOM-Condemned', description: 'Condemned', vanilla: true, min_players: 6, max_players: 6, authors: [ DAVE_EWING ], game_modes: DOMINATION },
  { name: 'DOM-Cryptic', description: 'Cryptic', vanilla: true, min_players: 6, max_players: 12, authors: [ ALAN_WILLARD ], game_modes: DOMINATION },
  { name: 'DOM-Gearbolt', description: 'GearBolt', vanilla: true, min_players: 6, max_players: 12, authors: [ CLIFF_BLESZINSKI ], game_modes: DOMINATION },
  { name: 'DOM-Ghardhen', description: 'Ghardhen', vanilla: true, min_players: 6, max_players: 12, authors: [ ALAN_WILLARD ], game_modes: DOMINATION },
  { name: 'DOM-Lament', description: 'Lament', vanilla: true, min_players: 2, max_players: 4, authors: [ ALAN_WILLARD ], game_modes: DOMINATION },
  { name: 'DOM-Leadworks', description: 'Leadworks', vanilla: true, min_players: 6, max_players: 12, authors: [ ELLIOT_CANNON ], game_modes: DOMINATION },
  { name: 'DOM-MetalDream', description: 'Metal Dream', vanilla: true, min_players: 6, max_players: 12, authors: [ CEDRIC_FIORENTINO ], game_modes: DOMINATION },
  { name: 'DOM-Olden', description: 'Olden Aquifer', vanilla: true, min_players: 4, max_players: 6, authors: [ ALAN_WILLARD ], game_modes: DOMINATION },
  { name: 'DOM-Sesmar', description: 'Tomb of Sesmar', vanilla: true, min_players: 6, max_players: 12, authors: [ JUAN_PANCHO_EEKELS ], game_modes: DOMINATION }
].freeze

VANILLA_ASSAULT_MAPS = [
  { name: 'AS-Frigate', description: 'Frigate', vanilla: true, min_players: 4, max_players: 8, authors: [ SHANE_CAUDLE ], game_modes: ASSAULT },
  { name: 'AS-Guardia', description: 'Guardia Fortress', vanilla: true, min_players: 6, max_players: 12, authors: [ CLIFF_BLESZINSKI ], game_modes: ASSAULT },
  { name: 'AS-HiSpeed', description: 'HiSpeed', vanilla: true, min_players: 4, max_players: 10, authors: [ JUAN_PANCHO_EEKELS ], game_modes: ASSAULT },
  { name: 'AS-Mazon', description: 'Mazon Fortress', vanilla: true, min_players: 8, max_players: 12, authors: [ SHANE_CAUDLE ], game_modes: ASSAULT },
  { name: 'AS-OceanFloor', description: 'OceanFloor Station 5', vanilla: true, min_players: 8, max_players: 10, authors: [ JUAN_PANCHO_EEKELS ], game_modes: ASSAULT },
  { name: 'AS-Overlord', description: 'Operation Overlord', vanilla: true, min_players: 8, max_players: 12, authors: [ DAVE_EWING ], game_modes: ASSAULT },
  { name: 'AS-Rook', description: 'Rook', vanilla: true, min_players: 6, max_players: 10, authors: [ ALAN_WILLARD ], game_modes: ASSAULT }
].freeze

VANILLA_CTF_MAPS = [
  { name: 'CTF-Command', description: 'The Last Command', vanilla: true, min_players: 6, max_players: 8, authors: [ ELLIOT_CANNON ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Coret', description: 'Coret Facility', vanilla: true, min_players: 6, max_players: 12, authors: [ ALAN_WILLARD ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Dreary', description: 'Dreary Outpost', vanilla: true, min_players: 8, max_players: 12, authors: [ SHANE_CAUDLE ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-EternalCave', description: 'Eternal Caves', vanilla: true, min_players: 4, max_players: 8, authors: [ JUAN_PANCHO_EEKELS ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Face', description: 'Facing worlds', vanilla: true, min_players: 4, max_players: 10, authors: [ CEDRIC_FIORENTINO ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Gauntlet', description: 'The Iron Gauntlet', vanilla: true, min_players: 6, max_players: 8, authors: [ CLIFF_BLESZINSKI ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-LavaGiant', description: 'The Lava Giant', vanilla: true, min_players: 8, max_players: 12, authors: [ JUAN_PANCHO_EEKELS ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Niven', description: 'Niven Experimental Lab', vanilla: true, min_players: 4, max_players: 6, authors: [ ALAN_WILLARD ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-November', description: 'November Sub Pen', vanilla: true, min_players: 8, max_players: 12, authors: [ ELLIOT_CANNON ], game_modes: CAPTURE_THE_FLAG }
].freeze

puts "Creating vanilla maps..."

[
  VANILLA_DEATHMATCH_MAPS,
  VANILLA_DOMINATION_MAPS,
  VANILLA_ASSAULT_MAPS,
  VANILLA_CTF_MAPS
].each do |map_data|
  map_data.each do |map_attrs|
    Map.where(name: map_attrs[:name], description: map_attrs[:description], vanilla: map_attrs[:vanilla]).first_or_create! do |map|
      map_attrs[:authors].each do |author_attrs|
        author = Author.where(name: author_attrs[:name], nickname: author_attrs[:nickname]).first_or_create!
        puts "***#{map.name} author: #{author.nickname}!***"
        map.authors << author
      end

      map_attrs[:game_modes].each do |game_mode_ut_value|
        game_mode = GameMode.find_by(ut_value: game_mode_ut_value)
        if game_mode.present?
          puts "***#{map.name} has game mode: #{game_mode.ut_value}!***"
          map.game_modes << game_mode
        end
      end

      puts "***#{map.name} added!***"
    end
  end
end

puts "\n"

# For later
EPIC_BONUS_PACK_MAPS = [
  { name: 'CTF-Cybrosis][', description: 'Cybrosis][', min_players: 4, max_players: 12, authors: [ ALAN_WILLARD ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Darji16', description: 'Darji Outpost #16-A', min_players: 12, max_players: 16, authors: [ ALAN_WILLARD ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Hydro16', description: 'Hydro Bases', min_players: 6, max_players: 12, authors: [ SIDNEY_RAUCHBERGER ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Noxion16', description: 'Noxion Base', min_players: 6, max_players: 16, authors: [ SIDNEY_RAUCHBERGER ], game_modes: CAPTURE_THE_FLAG },
  { name: 'DM-Agony', description: 'The Pit of Agony', min_players: 4, max_players: 12, authors: [ SIDNEY_RAUCHBERGER ], game_modes: DEATHMATCH },
  { name: 'DM-ArcaneTemple', description: 'Arcane Temple', min_players: 3, max_players: 8, authors: [ SHANE_CAUDLE ], game_modes: DEATHMATCH },
  { name: 'DM-Cybrosis][', description: 'Cybrosis][', min_players: 3, max_players: 8, authors: [ ALAN_WILLARD ], game_modes: DEATHMATCH },
  { name: 'DM-HealPod][', description: 'HealPod][', min_players: 2, max_players: 8, authors: [ CLIFF_BLESZINSKI, ALAN_WILLARD ], game_modes: DEATHMATCH },
  { name: 'DM-Malevolence', description: 'Malevolence', min_players: 2, max_players: 6, authors: [ RICH_EASTWOOD ], game_modes: DEATHMATCH },
  { name: 'DM-Mojo][', description: 'Mojo][', min_players: 4, max_players: 12, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH },
  { name: 'DM-Shrapnel][', description: 'Shrapnel][', min_players: 6, max_players: 16, authors: [ CLIFF_BLESZINSKI ], game_modes: DEATHMATCH }
].freeze

DE_BONUS_PACK_MAPS = [
  { name: 'CTF-HallOfGiants', description: 'Hall of Giants', min_players: 8, max_players: 16, authors: [ JUAN_PANCHO_EEKELS ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Orbital', description: 'Orbital Station 12', min_players: 12, max_players: 24, authors: [ DAVE_EWING ], game_modes: CAPTURE_THE_FLAG }
].freeze

INOXX_BONUS_PACK_MAPS = [
  { name: 'CTF-Face][', description: 'Facing worlds ][', min_players: 4, max_players: 10, authors: [ CEDRIC_FIORENTINO ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-High', description: 'High Towers', min_players: 16, max_players: 16, authors: [ CEDRIC_FIORENTINO ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Kosov', description: 'Kosov Canyon', min_players: 14, max_players: 14, authors: [ CEDRIC_FIORENTINO ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Nucleus', description: 'Nucleus Power Plant', min_players: 12, max_players: 12, authors: [ CEDRIC_FIORENTINO ], game_modes: CAPTURE_THE_FLAG },
  { name: 'DM-Crane', description: 'The Cranes', min_players: 8, max_players: 16, authors: [ CEDRIC_FIORENTINO ], game_modes: DEATHMATCH },
  { name: 'DM-SpaceNoxx', description: 'Space Noxx', min_players: 2, max_players: 6, authors: [ CEDRIC_FIORENTINO ], game_modes: DEATHMATCH }
].freeze

UT_BONUS_PACK_4_MAPS = [
  { name: 'CTF-Beatitude', description: 'Beatitude', min_players: 8, max_players: 16, authors: [ SIDNEY_RAUCHBERGER ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-EpicBoy', description: 'EpicBoy', min_players: 6, max_players: 10, authors: [ WARREN_MARSHALL ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Face-SE', description: 'Facing Worlds Special Edition', min_players: 4, max_players: 10, authors: [ CEDRIC_FIORENTINO ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Ratchet', description: 'Ratchet', min_players: 8, max_players: 12, authors: [ SIDNEY_RAUCHBERGER ], game_modes: CAPTURE_THE_FLAG },
  { name: 'DOM-Bullet', description: 'Bulletproof', min_players: 8, max_players: 16, authors: [ CLIFF_BLESZINSKI ], game_modes: DOMINATION },
  { name: 'DOM-CiDom', description: 'City Domination', min_players: 4, max_players: 8, authors: [ SIDNEY_RAUCHBERGER ], game_modes: DOMINATION },
  { name: 'DOM-Lament][', description: 'Lament][', min_players: 2, max_players: 4, authors: [ ALAN_WILLARD, RICH_EASTWOOD ], game_modes: DOMINATION },
  { name: 'DOM-WolfsBay', description: 'Wolf\'s Bay', min_players: 6, max_players: 6, authors: [ PHIL_COLE ], game_modes: DOMINATION },
  { name: 'DM-Bishop', description: 'Bishop', min_players: 4, max_players: 10, authors: [ ERIC_BOLTJES ], game_modes: DEATHMATCH },
  { name: 'DM-Closer', description: 'Closer Resolution', min_players: 2, max_players: 6, authors: [ ALAN_WILLARD ], game_modes: DEATHMATCH },
  { name: 'DM-Grit-TOURNEY', description: 'Grit', min_players: 2, max_players: 8, authors: [ ERIC_BOLTJES ], game_modes: DEATHMATCH },
  { name: 'DM-Viridian-TOURNEY', description: 'Viridian Dreams', min_players: 2, max_players: 6, authors: [ RICH_EASTWOOD ], game_modes: DEATHMATCH }
].freeze

MISC_ADDITIONAL_MAPS = [
  { name: 'AS-Bridge', description: 'Bridge', min_players: 6, max_players: 18, authors: [ CLAUDE_MEYER ], game_modes: ASSAULT },
  { name: 'CTF-Command][', description: 'The Last Command][', min_players: 6, max_players: 8, authors: [ ELLIOT_CANNON ], game_modes: CAPTURE_THE_FLAG },
  { name: 'CTF-Baranco', description: 'El Baranco', min_players: 6, max_players: 8, authors: [ ROGELIO_OLGUIN ], game_modes: CAPTURE_THE_FLAG },
  { name: 'DM-Gen][', description: 'Skaarj Generator ][', min_players: 4, max_players: 4, authors: [ CEDRIC_FIORENTINO ], game_modes: DEATHMATCH },
  { name: 'DM-Chronos', description: 'Chronos', min_players: 2, max_players: 6, authors: [ PAUL_M_BIAKA ], game_modes: DEATHMATCH }
].freeze

puts "\n"
