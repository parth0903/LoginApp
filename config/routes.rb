Rails.application.routes.draw do
  get 'homes/index'

  devise_for :users do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get "/", :to => "devise/sessions#new"
  end
  # root to: "devise/sessions#new"
  root :to => redirect("/users/sign_in")
end
