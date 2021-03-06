Rails.application.routes.draw do
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

  get '/callback', to: 'callback#index'
  get '/callback/calling', to: 'callback#calling'
  get '/callback/compute', to: 'callback#compute'

  get 'listen', to: 'listen#index'

  get 'flow/series', to: 'flow#series'
  get 'flow/parallel', to: 'flow#parallel'
  get 'flow/waterfall', to: 'flow#waterfall'
  get 'flow/compute', to: 'flow#compute'
  get 'flow/computedelay', to: 'flow#computedelay'

  get 'promise', to: 'promise#index'
  get 'promise/why', to: 'promise#why'
  get 'promise/why2', to: 'promise#why2'
  get 'promise/script', to: 'promise#script'

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
