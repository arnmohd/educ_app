EducApp::Application.routes.draw do
  resources :headers

  resources :people

  resources :user_course_relations

  resources :topics

  resources :chapters

  resources :syllabuses

  resources :courses

  resources :users

  resources :roles

  resources :institutions
  
  #resources :courses do
  #resources :syllabuses
#end

 
  

  
  root :to=>"home#index"
  get "signed_out" => "authentication#signed_out"
  get "new_user" => "authentication#new_user"
  get "sign_in" => "authentication#sign_in"
  post "sign_in" => "authentication#login"
  
  get "show_courses"  => "courses#show_courses"
  get "show_subjects" => "syllabuses#show_subjects"
  get "show_syllabus" => "chapters#show_syllabus"
  get "show_headers"  =>  "headers#show_headers"
  get "show_topic"    => "topics#show_topic"  
  
 # match 'courses/:course_id/syllabuses' => 'syllabuses#show_subjects'
 
end
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

