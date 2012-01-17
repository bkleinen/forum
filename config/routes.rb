Forum::Application.routes.draw do
  resource :search, :only => :show, :controller => :search
  resources :topics do
    resources :posts
  end
 
  root :to => 'topics#index'

end
