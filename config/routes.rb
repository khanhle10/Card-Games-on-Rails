CardGames::Application.routes.draw do
  
  resources :games do
    post 'reload' => 'reloads#reload_all'
    post 'reload_trick' => 'reloads#reload_trick'
    post 'fill' => 'fill_games#fill'
    post 'new_round' => 'rounds#create'
    post 'new_trick' => 'tricks#create'
    post 'play_one_card' => 'played_cards#create'
    post 'pass_cards' => 'card_passings#create'
    post 'toggle_passing_status' => 'card_passings#toggle_passing_status'
    post 'passing_set_ready' => 'card_passings#passing_set_ready'
  end
    
  resources :users
  
	resources :sessions
	
	match 'signup' => 'users#new'
	match 'logout' => 'sessions#destroy'
	match 'login' => 'sessions#new'

  root :to => 'games#index'
	
end
