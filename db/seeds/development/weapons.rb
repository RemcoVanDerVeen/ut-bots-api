VANILLA_WEAPONS = [
  { name: 'GES Bio Rifle', description: 'A gun that shoots green sludge', ut_value: 'BotPack.UT_Biorifle', vanilla: true },
  { name: 'Chainsaw', description: 'Rip and tear!', ut_value: 'BotPack.Chainsaw', vanilla: true },
  { name: 'Double Enforcer', description: 'Two pistols are better than one', ut_value: 'BotPack.DoubleEnforcer', vanilla: true },
  { name: 'Flak Cannon', description: 'Anti-aircraft gun made shotgun', ut_value: 'BotPack.UT_FlakCannon', vanilla: true },
  { name: 'Impact Hammer', description: 'dunno what this is', ut_value: 'BotPack.ImpactHammer', vanilla: true },
  { name: 'Minigun', description: 'Bullet hell', ut_value: 'BotPack.Minigun2', vanilla: true },
  { name: 'Pulse Gun', description: 'Green energy weapon', ut_value: 'BotPack.PulseGun', vanilla: true },
  { name: 'Redeemer', description: 'Warhead launcher', ut_value: 'BotPack.WarHeadLauncher', vanilla: true },
  { name: 'Ripper', description: 'A gun that shoots disc blades that cut you', ut_value: 'BotPack.Ripper', vanilla: true },
  { name: 'Rocket Launcher', description: 'Gun that shoots rockets', ut_value: 'BotPack.UT_Eightball', vanilla: true },
  { name: 'Shock Rifle', description: 'Purple energy weapon', ut_value: 'BotPack.ShockRifle', vanilla: true },
  { name: 'Sniper Rifle', description: 'For the camping coward', ut_value: 'BotPack.SniperRifle', vanilla: true }
].freeze

puts "Creating weapons..."

VANILLA_WEAPONS.each do |weapon_attrs|
  Weapon.where(**weapon_attrs).first_or_create! do |weapon|
    puts "***#{weapon.name} added!***"
  end
end

puts "\n"
