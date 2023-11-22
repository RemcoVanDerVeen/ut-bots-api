# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_18_143054) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_authorables", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.string "authorable_type", null: false
    t.bigint "authorable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_author_authorables_on_author_id"
    t.index ["authorable_type", "authorable_id"], name: "index_author_authorables_on_authorable"
  end

  create_table "authors", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "botlist_bots", force: :cascade do |t|
    t.bigint "botlist_id", null: false
    t.bigint "bot_id", null: false
    t.boolean "is_enabled", default: true, null: false
    t.integer "position", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bot_id"], name: "index_botlist_bots_on_bot_id"
    t.index ["botlist_id"], name: "index_botlist_bots_on_botlist_id"
  end

  create_table "botlists", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_enabled", default: true, null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bots", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "model_id", null: false
    t.bigint "skin_id", null: false
    t.bigint "face_id", null: false
    t.bigint "colour_id"
    t.integer "skill_adjust"
    t.decimal "skill_adjust_ut", precision: 4, scale: 2
    t.bigint "voice_pack_id", null: false
    t.bigint "favourite_weapon_id"
    t.integer "bot_accuracy"
    t.decimal "bot_accuracy_ut", precision: 4, scale: 2
    t.integer "alertness"
    t.decimal "alertness_ut", precision: 4, scale: 2
    t.integer "camping"
    t.decimal "camping_ut", precision: 4, scale: 2
    t.integer "strafing_ability"
    t.decimal "strafing_ability_ut", precision: 4, scale: 2
    t.bigint "combat_style_id", null: false
    t.boolean "has_jumpy_behaviour", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colour_id"], name: "index_bots_on_colour_id"
    t.index ["combat_style_id"], name: "index_bots_on_combat_style_id"
    t.index ["face_id"], name: "index_bots_on_face_id"
    t.index ["favourite_weapon_id"], name: "index_bots_on_favourite_weapon_id"
    t.index ["model_id"], name: "index_bots_on_model_id"
    t.index ["skin_id"], name: "index_bots_on_skin_id"
    t.index ["voice_pack_id"], name: "index_bots_on_voice_pack_id"
  end

  create_table "colours", force: :cascade do |t|
    t.string "name"
    t.string "hex"
    t.string "rgb"
    t.boolean "is_team_colour", default: false, null: false
    t.decimal "ut_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "combat_styles", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.decimal "ut_value", precision: 4, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_modes", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "vanilla", default: false, null: false
    t.string "ut_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.bigint "game_mode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_mode_id"], name: "index_maps_on_game_mode_id"
  end

  create_table "mod_pack_contents", force: :cascade do |t|
    t.bigint "mod_pack_id", null: false
    t.string "content_type", null: false
    t.bigint "content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_type", "content_id"], name: "index_mod_pack_contents_on_content"
    t.index ["mod_pack_id"], name: "index_mod_pack_contents_on_mod_pack_id"
  end

  create_table "mod_packs", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "mod_type_id", null: false
    t.bigint "mod_sub_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mod_sub_type_id"], name: "index_mod_packs_on_mod_sub_type_id"
    t.index ["mod_type_id"], name: "index_mod_packs_on_mod_type_id"
  end

  create_table "mod_sub_types", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "mod_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mod_type_id"], name: "index_mod_sub_types_on_mod_type_id"
  end

  create_table "mod_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mutators", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.bigint "game_mode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_mode_id"], name: "index_mutators_on_game_mode_id"
  end

  create_table "player_model_skin_faces", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.bigint "player_model_skin_id", null: false
    t.boolean "vanilla", default: false, null: false
    t.string "ut_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_model_skin_id"], name: "index_player_model_skin_faces_on_player_model_skin_id"
  end

  create_table "player_model_skins", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "has_all_colours", default: false, null: false
    t.bigint "player_model_id", null: false
    t.boolean "vanilla", default: false, null: false
    t.string "ut_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_model_id"], name: "index_player_model_skins_on_player_model_id"
  end

  create_table "player_model_voice_packs", force: :cascade do |t|
    t.bigint "player_model_id", null: false
    t.bigint "voice_pack_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_model_id"], name: "index_player_model_voice_packs_on_player_model_id"
    t.index ["voice_pack_id"], name: "index_player_model_voice_packs_on_voice_pack_id"
  end

  create_table "player_models", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "vanilla", default: false, null: false
    t.string "ut_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "value", null: false
    t.string "rateable_type", null: false
    t.bigint "rateable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rateable_type", "rateable_id"], name: "index_ratings_on_rateable"
  end

  create_table "team_bots", force: :cascade do |t|
    t.bigint "bot_id", null: false
    t.bigint "team_id", null: false
    t.boolean "is_human", default: false, null: false
    t.integer "position", null: false
    t.boolean "is_enabled", default: true, null: false
    t.boolean "is_captain", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bot_id"], name: "index_team_bots_on_bot_id"
    t.index ["team_id"], name: "index_team_bots_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voice_packs", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "has_all_sounds", default: false, null: false
    t.boolean "vanilla", default: false, null: false
    t.string "ut_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "vanilla", default: false, null: false
    t.string "ut_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "xbots_configuration_botlists", force: :cascade do |t|
    t.bigint "xbots_configuration_id", null: false
    t.bigint "botlist_id", null: false
    t.integer "position"
    t.boolean "is_enabled", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["botlist_id"], name: "index_xbots_configuration_botlists_on_botlist_id"
    t.index ["xbots_configuration_id"], name: "index_xbots_configuration_botlists_on_xbots_configuration_id"
  end

  create_table "xbots_configurations", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_active"
    t.integer "position"
    t.boolean "is_enabled"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "author_authorables", "authors"
  add_foreign_key "botlist_bots", "botlists"
  add_foreign_key "botlist_bots", "bots"
  add_foreign_key "bots", "colours"
  add_foreign_key "bots", "combat_styles"
  add_foreign_key "bots", "player_model_skin_faces", column: "face_id"
  add_foreign_key "bots", "player_model_skins", column: "skin_id"
  add_foreign_key "bots", "player_models", column: "model_id"
  add_foreign_key "bots", "voice_packs"
  add_foreign_key "bots", "weapons", column: "favourite_weapon_id"
  add_foreign_key "maps", "game_modes"
  add_foreign_key "mod_pack_contents", "mod_packs"
  add_foreign_key "mod_packs", "mod_sub_types"
  add_foreign_key "mod_packs", "mod_types"
  add_foreign_key "mod_sub_types", "mod_types"
  add_foreign_key "mutators", "game_modes"
  add_foreign_key "player_model_skin_faces", "player_model_skins"
  add_foreign_key "player_model_skins", "player_models"
  add_foreign_key "player_model_voice_packs", "player_models"
  add_foreign_key "player_model_voice_packs", "voice_packs"
  add_foreign_key "team_bots", "bots"
  add_foreign_key "team_bots", "teams"
  add_foreign_key "xbots_configuration_botlists", "botlists"
  add_foreign_key "xbots_configuration_botlists", "xbots_configurations"
end
