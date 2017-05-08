Rails.application.routes.draw do
  get '/.well-known/acme-challenge/:id' => 'pages#letsencrypt'

  mount Locomotive::Engine => '/admin', as: 'locomotive'
  mount Locomotive::API.to_app => '/locomotive(/:site_handle)/api'
  mount Locomotive::Steam.to_app => '/', anchor: false
end
