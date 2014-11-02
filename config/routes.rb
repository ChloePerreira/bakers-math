Rails.application.routes.draw do

  root 'static#home'

  get 'sessions/new', to: 'sessions#new', as: :new_session
  post 'sessions/new', to: 'sessions#create', as: :create_session
  delete 'sessions', to: 'sessions#destroy', as: :destroy_session
  
  get 'user/new', to: 'users#new', as: :new_user
  post 'user/new', to: 'users#create', as: :create_user
  get 'user/dashboard', to: 'users#dashboard', as: :dashboard 

  get 'recipe/new', to: 'recipes#new', as: :new_recipe
  post 'recipe/new', to: 'recipes#create', as: :create_recipe
  delete 'recipe/:id', to: 'recipes#destroy', as: :destroy_recipe
  get 'recipe/edit/:id', to: 'recipes#edit', as: :edit_recipe
  patch 'recipe/edit/:id', to: 'recipes#update', as: :update_recipe
  get 'recipes/public', to: 'recipes#public', as: :public_recipes
  get 'recipe/show/:id', to: 'recipes#show', as: :show_recipe

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
