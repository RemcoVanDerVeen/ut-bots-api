Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "index#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :author_authorables
  resources :authors
  resources :botlist_bots
  resources :botlists
  resources :bots
  resources :colours, only: [ :index ]
  resources :combat_styles, only: [ :index ]
  resources :game_modes
  resources :maps
  resources :mod_pack_contents
  resources :mod_packs
  resources :mod_sub_types
  resources :mod_types
  resources :mutators
  resources :player_model_skin_faces
  resources :player_model_skins
  resources :player_models
  resources :ratings
  resources :team_bots
  resources :teams
  resources :voice_packs
  resources :weapons
  resources :xbots_configuration_botlists
  resources :xbots_configurations
end
