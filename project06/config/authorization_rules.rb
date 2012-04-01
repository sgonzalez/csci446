authorization do
  
  role :admin do
    has_permission_on :admin, :to => [:index]
    has_permission_on :admin_users, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :admin_roles, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :user_sessions, :to => [:destroy]
    
    has_permission_on :users, :to => [:index]
  end
  
  role :guest do
    has_permission_on :users, :to => [:new, :create, :index]
    has_permission_on :user_sessions, :to => [:new, :create]
  end

  role :member do
    has_permission_on :member, :to => [:index]
    has_permission_on :member_users, :to => [:index, :edit, :update]
    has_permission_on :user_sessions, :to => [:destroy]
  end

end