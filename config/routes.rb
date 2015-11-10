Rails.application.routes.draw do
  namespace :api do  namespace :v1 do resources :todoitems, except: [:new, :edit] end end
	devise_for :user, only: []

	namespace :api do
		namespace :v1, defaults: { format: :json } do
			resource :login, only: [:create], controller: :sessions
		end
	end
end