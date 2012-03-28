authorization do
  role :admin do
    has_permission_on :users, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :admin_admin, :to => [:index]
    has_permission_on :admin_roles, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    
  end
  
  role :guest do
    has_permission_on :users, :to => [:new, :create, :index]
#    has_permission_on :users, :to => [:edit, :update]
  end

  role :member do
    includes :guest
    has_permission_on :users, :to => [:show, :edit, :update]# do
#      if_attribute :username => is { current_user.username }
#     end
  end

end