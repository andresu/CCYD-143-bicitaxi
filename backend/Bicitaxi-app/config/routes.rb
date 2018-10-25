Rails.application.routes.draw do
  resources :agremiacions
  resources :bicitaxista_agremiacions
  resources :zona_localidads
  resources :usuario_zonas
  resources :viajes
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
