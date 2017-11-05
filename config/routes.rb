Rails.application.routes.draw do
  get 'dashboard/index'

  resources :subjects
  resources :tests do 
    collection do 
      get :generate_new
      post 'generate/:template_id', action: :generate
    end
  end

  root to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
