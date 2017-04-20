Rails.application.routes.draw do

  get 'registro_calificaciones/index'
  resources :desempenos

  get 'configurar_desempenos/index'

  get 'welcome/index'

  root 'desempenos#index'
end
