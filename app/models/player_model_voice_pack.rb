class PlayerModelVoicePack < ApplicationRecord
  belongs_to :player_model, optional: false
  belongs_to :voice_pack, optional: false
end
