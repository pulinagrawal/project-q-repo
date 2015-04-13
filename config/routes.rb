Rails.application.routes.draw do

  get 'categories/show'

 # get 'profile/new'

	root 'static_pages#index'

  get '/profiles/new', to: 'profiles#new', as: 'new_profile'
  post '/profiles', to: 'profiles#create'

  get  '/profiles/:id', to: 'profiles#show', as: 'profile'
  get  '/categories', to: 'categories#show', as: 'category'
  post '/categories/:category_id/:level', to: 'quiz#create'


  get '/profiles/:id/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/profiles/:id', to: 'profiles#update'
  put '/profiles/:id', to: 'profiles#update'
  
  get 'quizzes/new', to: 'quizzes#new', as: 'newquiz'
  get 'quizzes/:id' => 'quizzes#show', as: 'quiz'
  patch 'quizzes/:id' => 'quizzes#answer'
  get 'quizzes/results/:id' => 'quizzes#results'

  get 'quizzes/:id/result' => 'quizzes#result', as: 'quiz_result'

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
