VANILLA_DEATHMATCH_MAPS = [
  { name: 'DM-Deck16', description: 'Deck 16', vanilla: true, authors: [ { name: 'Elliot Cannon', nickname: 'Myscha' } ], game_modes: [ 'DM', 'TDM', 'LMS' ] }

].freeze

VANILLA_DOMINATION_MAPS = [
  { name: 'DOM-Cinder', description: 'Cinder Foundry', vanilla: true, authors: [ { name: 'Cliff Bleszinski', nickname: 'Cliff Bleszinski' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Condemned', description: 'Condemned', vanilla: true, authors: [ { name: 'Dave Ewing', nickname: 'Dave Ewing' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Cryptic', description: 'Cryptic', vanilla: true, authors: [ { name: 'Alan Willard', nickname: 'Talisman' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Gearbolt', description: 'GearBolt', vanilla: true, authors: [ { name: 'Cliff Bleszinski', nickname: 'Cliff Bleszinski' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Ghardhen', description: 'Ghardhen', vanilla: true, authors: [ { name: 'Alan Willard', nickname: 'Talisman' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Lament', description: 'Lament', vanilla: true, authors: [ { name: 'Alan Willard', nickname: 'Talisman' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Leadworks', description: 'Leadworks', vanilla: true, authors: [ { name: 'Elliot Cannon', nickname: 'Myscha' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-MetalDream', description: 'Metal Dream', vanilla: true, authors: [ { name: 'Cedric Fiorentino', nickname: 'Inoxx' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Olden', description: 'Olden Aquifer', vanilla: true, authors: [ { name: 'Alan Willard', nickname: 'Talisman' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Sesmar', description: 'Tomb of Sesmar', vanilla: true, authors: [ { name: 'Juan Pancho Eekels', nickname: 'XceptOne' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Tutorial', description: 'Domination Tutorial', vanilla: true, authors: [ { name: 'Cliff Bleszinski', nickname: 'Cliff Bleszinski' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Bullet', description: 'Bulletproof', vanilla: false, authors: [ { name: 'Cliff Bleszinski', nickname: 'Cliff Bleszinski' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-CiDom', description: 'City Domination', vanilla: false, authors: [ { name: 'Sidney Rauchberger', nickname: 'Clawfist' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-Lament][', description: 'Lament][', vanilla: false, authors: [ { name: 'Alan Willard', nickname: 'Talisman' }, { name: 'Rich Eastwood', nickname: 'Akuma' } ], game_modes: [ 'DOM' ] },
  { name: 'DOM-WolfsBay', description: 'Wolf\'s Bay', vanilla: false, authors: [ { name: 'Phil Cole', nickname: 'Phil Cole' } ], game_modes: [ 'DOM' ] }
].freeze

VANILLA_ASSAULT_MAPS = [].freeze
VANILLA_CTF_MAPS = [
  { name: 'CTF-Face', description: 'Facing worlds', vanilla: true, authors: [ { name: 'Cedric Fiorentino', nickname: 'Inoxx' } ], game_modes: [ 'CTF' ] }
].freeze

puts "Creating maps..."

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
        puts "***#{author.nickname} added!***"
        map.authors << author
      end

      map_attrs[:game_modes].each do |game_mode_ut_value|
        game_mode = GameMode.find_by(ut_value: game_mode_ut_value)
        if game_mode.present?
          puts "***#{game_mode.ut_value} added!***"
          map.game_modes << game_mode
        end
      end

      puts "***#{map.name} added!***"
    end
  end
end





puts "\n"
