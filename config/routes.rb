Rails.application.routes.draw do
  devise_for :users
  resources :reports

  root 'reports#index'
  
  as :user do
  	get "/jnc_sign_up" => "devise/registrations#new"
  end

end
