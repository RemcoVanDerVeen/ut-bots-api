VANILLA_COMBAT_STYLES = [
  { name: 'Aggressive', description: 'An aggressive playing style', ut_value: 0.5 },
  { name: 'Avoidant', description: 'An extremely cautious playing style', ut_value: -1.0 },
  { name: 'Berserk', description: 'An extremely aggressive playing style', ut_value: 1.0 },
  { name: 'Cautious', description: 'A cautious playing style', ut_value: -0.5 },
  { name: 'Normal', description: 'A normal playing style', ut_value: 0.0 }
].freeze

puts "Creating combat styles..."

VANILLA_COMBAT_STYLES.each do |combat_style_attrs|
  CombatStyle.where(**combat_style_attrs).first_or_create! do |combat_style|
    puts "***#{combat_style.name} added!***"
  end
end

puts "\n"
