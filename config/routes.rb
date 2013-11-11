Triton::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users, :controllers => { :registrations => "users" }
  resources :users, only: [:index, :new, :create, :show, :destroy, :edit, :update] do |user|
    collection do
      get 'checkname'
    end
    resources :messages do
      collection do
        post 'delete_multiple'
      end
    end
  end
  
  resources :tickets do
    resources :replies
  end

  resources :states

  resources :employee_departments 
  resources :employees
  
  scope 'employees/:employee_id' do
    resources :employee_admission_steps
  end

  resources :batches do
    resources :student_classes
  end

  
  resources :students do
    resources :previous_details
    resources :guardians
  end
resources :guidance_supervisors
  resources :guidance_advisors

resources :counselor_supervisors
resources :counselor_advisors
resources :counselor_batches do
  resources :student_classes
end
resources :batch_counselor_supervisors
resources :batch_counselor_advisors

resources :leadership_supervisors
resources :leadership_leaders
resources :leadership_batches
resources :batch_leadership_supervisors
resources :batch_leadership_advisors

resources :events


  get '/dashboard', to: 'static_pages#home'
  #get '/home', to: 'static_pages#homepage'
  get '/support', to: 'static_pages#support_center'
  #get '/student/admission1' , to: 'students#new'
  get '/student/admission2' , to: 'guardians#new'
  get '/employee/human_resources' , to: 'static_pages#hr_board'
  get '/guidance_management' , to: 'static_pages#guidance'
  get '/employee/employee_management', to: 'static_pages#employee_management'
  #get '/employee/admission1', to: 'employees#new'
  get '/my_profile' , to:'static_pages#profile_page'
  get '/student_union', to: 'static_pages#student_union_board'
  get '/student_union/activities', to: 'static_pages#student_union_activities'
  #get '/academic_counselor', to: 'guidance_supervisors#academic_counselor'
  get '/student_complaint', to: 'static_pages#student_complaint'
  get '/settings' , to: 'static_pages#settings'
  get '/academic_counselor', to: 'batch_counselor_supervisors#academic_counselor'
  get '/student_leadership', to: 'batch_leadership_supervisors#student_leadership'
  
  devise_scope :user do
    root to: 'devise/sessions#new'
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
end
