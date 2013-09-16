Utko::Application.routes.draw do
  get "dashboard/index"
  post "dashboard/posted"
  post "dashboard/tempo"
  get "orders/index"
  root :to => 'dashboard#index'
end