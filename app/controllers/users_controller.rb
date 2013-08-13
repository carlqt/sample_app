class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def create
    #raise params[:user].inspect
    @user = User.new(params[:user])
        
    if @user.save
      #flash[:success] = "Welcome to the sample app"
      #can use user_path(@user) or @user
      redirect_to @user, :flash => { :success => "Welcome to the Sample App!"}
    else
      @title = "Sign up"
      render 'new'
    end
    
  end
end
