Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/buildings', to: 'buildings#index', as:'buildings'
  get '/buildings/:id', to: 'buildings#show', as:'building'
  get '/buildings/:id/edit', to: 'buildings#edit', as:'edit_building'
  patch '/buildings/:id', to: 'buildings#update'

resources :companies do 
  resources :employees
end



end
