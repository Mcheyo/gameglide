class UsersController < ApplicationController
before_action :get_user, only: [:show, :edit, :update, :destroy]

def index 
    @users = User.all 
end 

def new 
    @user = User.new 
end 

def create 
    @user = User.create(user_params)
    if 
    @user.save 
    redirect_to user_path(@user)
        
    else
        render :new
    end
end 

def edit 
end 

def update 
    @user.update(user_params)
    redirect_to user_path(@user)
end 

def destroy 
    @user.destroy
    redirect_to users_path
end 

private 
   
def get_user 
    @user = User.find(params[:id])
end 

def user_params 
    params.require(:user).permit(:username)
end 
end
