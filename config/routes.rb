Rails.application.routes.draw do
  root 'static_pages#index'
  get 'myhome', to:'static_pages#landing', as: 'landing'

  resources :sessions, only: [:new, :create, :destroy]

  get '/signin',  to: 'sessions#new' , as: 'signin'
  delete  '/signout', to: 'sessions#destroy', via: :delete , as: 'signout'

  get  '/categories', to: 'categories#show', as: 'category'
  post '/categories/:category_id/:level', to: 'quiz#create'
  get 'categories/show'

  get '/profiles/new', to: 'profiles#new', as: 'new_profile'
  post '/profiles', to: 'profiles#create'
  get '/profiles/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  get  '/profiles/:id', to: 'profiles#show', as: 'profile'
  patch '/profiles/:id', to: 'profiles#update'
  put '/profiles/:id', to: 'profiles#update'

  get '/passwordresets/new', to: 'passwordresets#new', as: 'new_password'
  post '/passwordresets', to: 'passwordresets#passwordreset', as: 'passwordreset_profile'
  get '/passwordresets/edit', to: 'passwordresets#edit', as: 'passwordreset_edit'
  patch '/passwordresets/', to: 'passwordresets#update'
  patch '/passwordresets/', to: 'passwordresets#update'
  
  get 'quizzes/new', to: 'quizzes#new', as: 'newquiz'
  get 'quizzes/index', to: 'quizzes#index', as:'quiz_index'
  get 'quizzes/:id' , to: 'quizzes#show', as: 'quiz'
  patch 'quizzes/:id' , to: 'quizzes#answer'
  get 'quizzes/:id/result' , to: 'quizzes#result', as: 'quiz_result'
  delete '/quizzes/:id', to:'quizzes#destroy' 
  
  get 'stats', to: 'stats#show'

  # To route invalid path to root_url
  match '*path' , to: redirect('/'), via: :get 

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
