Rails.application.routes.draw do
  resources :desempenos

  resources :estudiantes
  get "show_search_estudiante" => "estudiantes#show_search"
  post "search_estudiante" => "estudiantes#search"

  root 'dashboard#index'
end
