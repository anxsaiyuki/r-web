Website::Application.routes.draw do
 
  get "welcome/index", as: 'index'
  get "welcome/product.:id", to: 'welcome#product', as: 'product'
  get "welcome/product_list", to: 'welcome#product_list', as: 'product_list'
  get "welcome/register", as: 'register'
  get "sessions/session_end"
  get "welcome/register_succeed", as: 'register_succeed'
  get "welcome/registration"
  post "welcome/registration"
  post "sessions/log_in"
  post "users/create_user", as: 'create_user'
  
  get "module/banner"
  get "module/footer"
  get "module/index_banner"
  get "module/item.:id", to: 'module#item', as: 'item'
  get "module/menu"
  get "module/product.:id", to: 'module#product', as: 'product_m'
  get "module/register"
  get "module/sideMenu"
  get "module/top_bar"
  
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
 root :to => 'welcome#index'
	resources :users
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
