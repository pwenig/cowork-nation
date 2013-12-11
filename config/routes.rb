App::Application.routes.draw do

get "/"                   =>  "main#index"
get "/listing/:city"      =>  "main#listing_details"
post "/search"            => "main#search"
get "/login"              =>  "main#login"
post "/login"             =>  "main#login_post"
get "/new_user"           =>  "main#new_user"
post "/new_user"          =>  "main#new_user_post"
get "/new_cowork"         =>  "main#new_cowork"
post "/new_cowork"        =>  "main#new_cowork_post"
get "/new_or_edit/:name"  =>  "main#new_or_edit_details"
post "/new_or_edit/:name" =>  "main#new_or_edit_details_post"
get "/detail/:name"       =>  "main#detail_details"
get "/logout"             =>  "main#logout"



 
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
