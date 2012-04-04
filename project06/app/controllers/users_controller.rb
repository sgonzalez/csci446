class UsersController < ApplicationController
  
  filter_resource_access
  
  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(:page => params[:page], :per_page => 10, :order => 'last')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save && verify_recaptcha(:model => @user)
        format.html { redirect_to :users, notice: "Welcome, "+ @user.name + "." }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
