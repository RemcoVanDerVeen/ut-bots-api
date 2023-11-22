Rails.application.routes.draw do
  resources :team_bots
  resources :teams
  resources :xbots_configuration_botlists
  resources :botlist_bots
  resources :bots
  resources :colours
  resources :ratings
  resources :author_authorables
  resources :authors
  resources :weapons
  resources :maps
  resources :mutators
  resources :game_modes
  resources :mod_pack_contents
  resources :mod_packs
  resources :mod_sub_types
  resources :player_model_skin_faces
  resources :player_model_skins
  resources :player_models
  resources :botlists
  resources :voice_packs
  resources :mod_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"

  resources :combat_styles
  resources :xbots_configurations
end
