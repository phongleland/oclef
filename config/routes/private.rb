Rails.application.routes.draw do
  
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  #, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  
  authenticated :user do
    resources :parent_types
    resources :books
    resources :composers
    resources :songs
    resources :schools
    resources :locations
    resources :teachers
    resources :instruments
    resources :students do
      resources :parents
      resources :mentorships
      resources :assignments
    end
    resources :parents
    resources :mentorships
    resources :assignments do
      resources :comments
    end
    resources :comments
    get 'timeline', :to=>'timeline#index', as: :timeline
    
    match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

    root :to => "timeline#index", :as => "authenticated_root"
  end

end