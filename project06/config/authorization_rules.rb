authorization do
  
  role :admin do
    has_permission_on :admin, :to => [:index] #Admin Home
    has_permission_on :admin_users, :to => [:index, :show, :edit, :update] #Users Editting
    has_permission_on :admin_roles, :to => [:index, :show, :new, :create, :edit, :update, :destroy] #Roles CRUD
    
    has_permission_on :user_sessions, :to => [:destroy] #Logout
    
    has_permission_on :users, :to => [:index]
  end
  
  role :guest do
    has_permission_on :users, :to => [:new, :create] #Register
    
    has_permission_on :user_sessions, :to => [:new, :create] #Login
    
    has_permission_on :users, :to => [:index]
  end

  role :member do
    has_permission_on :member, :to => [:index] #Member Home
    has_permission_on :member_users, :to => [:edit, :update] #Edit Profile
    
    has_permission_on :user_sessions, :to => [:destroy] #Logout
    
    has_permission_on :users, :to => [:index]
  end

end