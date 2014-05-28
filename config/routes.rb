Website::Application.routes.draw do
 
  get "", to: 'main#index', as: 'index'
  get "product/item.:id", to: 'product#index', as: 'product'
  get "product/list.:id", to: 'product#list', as: 'product_list'
  get "product/list.:id", to: 'product#list', as: 'product_list_item'

  get "register", to: 'register#index', as: 'register'
  
  get "sessions/session_end"
  post "sessions/log_in"
  post "users/create_user", as: 'create_user'
  get "log_in", to: 'users#mobile_log_in', as: 'mobile_log_in'
  
  
  get "cart", to: 'cart#index', as: 'cart'
  post "cart/add_cart.:id", to: 'cart#add_cart', as: 'add_cart'
  put "cart/add_item_cart.:id", to: 'cart#add_item_cart', as: 'add_item_cart'
  post "cart/edit_cart_quantity", to: 'cart#edit_cart_quantity', as: 'edit_cart_quantity'
  get "cart/remove_cart.:id", to: 'cart#remove_cart', as: 'remove_cart'
  
  get "order", to: 'orders#index', as: 'order'
  get "order/payment_method", to: 'orders#payment_method', as: 'payment_method'
  post "order/payment_method", to: 'orders#payment_method', as: 'payment_method'
  post "order/order_confirmation", to: 'orders#order_confirmation', as: 'order_confirmation'
  get "order/order_confirmation", to: 'orders#order_confirmation', as: 'order_confirmation'
  get "order/order_complete", to: 'orders#order_complete', as: 'order_complete'
  
  get "module/banner"
  get "module/footer"
  get "module/index_banner"
  get "module/item.:id", to: 'module#item', as: 'item'
  get "module/menu"
  get "module/product.:id", to: 'module#product', as: 'product_m'
  get "module/register"
  get "module/sideMenu"
  get "module/top_bar"
  
  post "search", to: 'search#index', as: 'search'
  
  get "not_found", to: 'errors#not_found', as: 'not_found'
  
  get "cardlist", to: 'cards#cardlist', as: 'cardlist'
  
  match '/404' => 'errors#not_found'
  match '/422' => 'errors#server_error'
  match '/500' => 'errors#server_error'

  get '*unmatched_route', :to => 'application#render_404'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  #root 'welcome#index'
  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
	
  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
 root :to => 'main#index'
	resources :users
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
