Closing20::Application.routes.draw do
  resources :total_closings

  root :to => "total_closings#index"
end
