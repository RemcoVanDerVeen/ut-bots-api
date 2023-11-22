VANILLA_MODELS = [
  { name: 'Boss', description: 'A boss model', ut_value: 'TBossBot', vanilla: true },
  { name: 'Female Commando', description: 'A female commando model', ut_value: 'BotPack.TFemale1Bot', vanilla: true },
  { name: 'Female Soldier', description: 'A female soldier model', ut_value: 'BotPack.TFemale2Bot', vanilla: true },
  { name: 'Male Commando', description: 'A male commando model', ut_value: 'BotPack.TMale1Bot', vanilla: true },
  { name: 'Male Soldier', description: 'A male soldier model', ut_value: 'BotPack.TMale2Bot', vanilla: true },
  { name: 'Nali', description: 'A Nali model', ut_value: 'BotPack.TNali2bot', vanilla: true },
  { name: 'Nali WarCow', description: 'Moo!', ut_value: 'cowfix.tcowbotfixed', vanilla: true },
  { name: 'Skaarj Hybrid', description: 'A skaarj hybrid model', ut_value: 'MultiMesh.TSkaarjBot', vanilla: true },
  { name: 'Warboss', description: 'Warboss model from the Bonus Pack 4', ut_value: 'SkeletalCharsFix313.WarBossBotFix313', vanilla: true },
  { name: 'Xan Mark II', description: 'Xan Mark II model from the Bonus Pack 4', ut_value: 'SkeletalCharsFix313.XanMk2BotFix313', vanilla: true },
].freeze

CUSTOM_MODELS = [
  { name: 'Alien Queen', description: 'From the movie Aliens', ut_value: 'aqueen.aqueenBot' },
  { name: 'Anna Navarre', description: 'Ported model from Deus Ex', ut_value: 'AnnaNavarre.AnnaNavarrebot' },
  { name: 'Chicken', description: '...a chicken', ut_value: 'Chicken.ChickenBot' },
  { name: 'Gunther Hermann', description: 'Ported model from Deus Ex', ut_value: 'GuntherHermann.GuntherHermannbot' },
  { name: 'JC Denton', description: 'Ported model from Deus Ex', ut_value: 'JCDenton.JCDentonBot' },
  { name: 'Mech Trooper', description: 'Ported model from Deus Ex', ut_value: 'MechTrooper.MechTrooperbot' },
  { name: 'War Machine', description: 'Ported model from the PS2 version of the game', ut_value: 'PS2WarMachine.PS2WarMachine' },
]

puts "Creating player models..."

[*VANILLA_MODELS, *CUSTOM_MODELS].each do |model_attrs|
  PlayerModel.where(**model_attrs).first_or_create! do |model|
    puts "***#{model.name} added!***"
  end
end

puts "\n"
