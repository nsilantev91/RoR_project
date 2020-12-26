Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  #get 'auth#index' # окно авторизации
  get '/home/auth', 'auth#index'
  get '/home/profile', 'profile#index'
  get '/home/admin', 'admin#index'
  #post '/home/get_book', to

end
