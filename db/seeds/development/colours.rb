VANILLA_TEAM_COLOURS = [
  { name: 'None', hex: '#000000', rgb: '0,0,0', is_team_colour: true, ut_value: 255 },
  { name: 'Red', hex: '#FF0000', rgb: '255,0,0', is_team_colour: true, ut_value: 0 },
  { name: 'Blue', hex: '#0000FF', rgb: '0,0,255', is_team_colour: true, ut_value: 1 },
  { name: 'Green', hex: '#00FF00', rgb: '0,255,0', is_team_colour: true, ut_value: 2 },
  { name: 'Gold', hex: '#FFD700', rgb: '255,215,0', is_team_colour: true, ut_value: 3 }
].freeze

puts "Creating team colours..."

VANILLA_TEAM_COLOURS.each do |colour_attrs|
  Colour.where(**colour_attrs).first_or_create! do |colour|
    puts "***#{colour.name} added!***"
  end
end

puts "\n"
