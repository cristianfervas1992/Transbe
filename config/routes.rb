Rails.application.routes.draw do
  #get 'events/index'

  get 'vacations/index'

  get 'settlements/index'

  #get 'sallary_settlements/index'

  #get 'contract_installations/index'

  get 'contract_guards/index'

  get 'bills/index'

  get 'installations/index'

    #el root es de que direccione como paga de inicio al index de la carpeta bienvenido
  root 'bienvenida#index'
  #get 'guards/index'
  #resource :guards
  #get '/guards/', to: 'guards#index'
  #get '/guards/new', to: 'guards#new'
  #post '/guards', to: 'guards#create'
  #get '/guard/:id', to: 'guards#show', as: 'guard'
  #get '/guards/:id/edit', to: 'guards#edit', as: 'edit_guard'
  #put '/guard/:id', to: 'guards#update'
  get '/guards', to: 'guards#index'
  get '/guards/new', to: 'guards#new'
  post '/guards', to: 'guards#create'
  get '/guard/:id', to: 'guards#show', as: 'guard'
  get '/guards/:id/edit', to: 'guards#edit', as: 'edit_guard'
  patch '/guard/:id', to: 'guards#update'
  put '/guard/:id', to: 'guards#update'
  delete '/guard/:id', to: 'guards#delete'
  post '/guard/:id', to: 'guards#cambiarEstado'

  #rutas de installaciones
  #get '/installations', to: 'installations#index'
  #get '/installations/new', to: 'installations#new'
  #post '/installations', to: 'installations#create'
  #get '/installation/:id', to: 'installations#show', as: 'installation'
  #get '/installations/:id/edit', to: 'installations#edit', as: 'edit_installation'
  #patch '/installation/:id', to: 'installations#update'
  #put '/installation/:id', to: 'installations#update'
  #delete '/installation/:id', to: 'installations#delete'

  #rutas de eventos
  #get '/events', to: 'events#index'
  #get '/events/new', to: 'events#new'
  #post '/events', to: 'events#create'
  #get '/event/:id', to: 'events#show', as: 'event'
  #get '/events/:id/edit', to: 'events#edit', as: 'edit_event'
  #patch '/event/:id', to: 'events#update'
  #put '/event/:id', to: 'events#update'
  #delete '/event/:id', to: 'events#delete'

  #rutas de vacaciones
  #get '/vacations', to: 'vacations#index'
  #get '/vacations/new', to: 'vacations#new'
  #post '/vacations', to: 'vacations#create'
  #get '/vacation/:id', to: 'vacations#show', as: 'vacation'
  #get '/vacations/:id/edit', to: 'vacations#edit', as: 'edit_vacation'
  #patch '/vacation/:id', to: 'vacations#update'
  #put '/vacation/:id', to: 'vacations#update'
  #delete '/vacation/:id', to: 'vacations#delete'
  resources :installations
  resources :sallary_settlements
  resources :vacations
  resources :contract_guards
  resources :osdocumentations
  resources :settlements
  resources :contract_installations
  resources :bills
  resources :events
  
  #rutas de liquidaciones
  # get '/sallary_settlements', to: 'sallary_settlements#index'
  # get '/sallary_settlements/new', to: 'sallary_settlements#new'
  # post '/sallary_settlements', to: 'sallary_settlements#create'
  # get '/sallary_settlement/:id', to: 'sallary_settlements#show', as: 'sallary_settlement'
  # get '/sallary_settlements/:id/edit', to: 'sallary_settlements#edit', as: 'edit_sallary_settlement'
  # patch '/sallary_settlement/:id', to: 'sallary_settlements#update'
  # put '/sallary_settlement/:id', to: 'sallary_settlements#update'
  # delete '/sallary_settlement/:id', to: 'sallary_settlements#delete'

  #rutas de la documentacion 0s10
  #get '/osdocumentations', to: 'osdocumentations#index'
  #get '/osdocumentations/new', to: 'osdocumentations#new'
  #post '/osdocumentations', to: 'osdocumentations#create'
  #get '/osdocumentation/:id', to: 'osdocumentations#show', as: 'osdocumentation'
  #get '/osdocumentations/:id/edit', to: 'osdocumentations#edit', as: 'edit_osdocumentation'
  #patch '/osdocumentation/:id', to: 'osdocumentations#update'
  #put '/osdocumentation/:id', to: 'osdocumentations#update'
  #delete '/osdocumentation/:id', to: 'osdocumentations#delete'

  #rutas de finiquitos
  #get '/settlements', to: 'settlements#index'
  #get '/settlements/new', to: 'settlements#new'
  #post '/settlements', to: 'settlements#create'
  #get '/settlement/:id', to: 'settlements#show', as: 'settlement'
  #get '/settlements/:id/edit', to: 'settlements#edit', as: 'edit_settlement'
  #patch '/settlement/:id', to: 'settlements#update'
  #put '/settlement/:id', to: 'settlements#update'
  #delete '/settlement/:id', to: 'settlements#delete'

  devise_for :users
  #get 'bienvenida/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
