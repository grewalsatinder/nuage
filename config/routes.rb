Nuage::Application.routes.draw do

  root 'sessions#index'
 
   
  #The Rails router recognizes URLs and dispatches them to a controller's action. It can also generate paths and URLs
  #router to match request to a controller action
  #GET is verb/Path   Controller#Action(used for)
  # get "sessions/new"
  get '/login' => 'sessions#new', as: :sessions
  # get "sessions/index"
  # get "sessions/create"
  post '/login' => 'sessions#create' 
  # get "sessions/show"
  # get "sessions/edit"
  # get "sessions/update"
  # get "sessions/delete"
  delete '/logout' =>'sessions#destroy', as: :log_out
  # get "sessions/destroy"
  # get "users/new
  #root 'users#new'


    get '/signup'  => 'users#new' , as: :signup
    get '/users/new' => 'users#new'
    post '/users' => 'users#create'
  # get "users/index"
  # get "users/create"
  # get "users/show"
  # get "users/edit"
  # get "users/update"
  # get "users/delete"
  # get "users/destroy"

  #resources :incidents
  get '/incidents' => 'incidents#index', as: :incidents   # => is hashrocket
  post '/incidents' => 'incidents#create'


  get '/incidents/new' => 'incidents#new', as: :new_incident
  get '/incidents/:id' =>  'incidents#show', as: :incident

  get '/incidents/:id/edit' => 'incidents#edit', as: :edit_incident
  patch '/incidents/:id' => 'incidents#update'
  delete '/incidents/:id' => 'incidents#destroy'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
