class UserController < ApplicationController
    def get
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = 'User was successfully created'
            redirect_to :action => :list
        end
    end
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(params[:user])
            flash[:notice] = 'User was successfully updated'
        else
            render :action => :update 
        end
    end
    def delete
        User.find(params[:id]).destroy
        redirect_to :action => :list
    end
    def list
        @users = User.all
    end

    private
    def user_params
        return params.require(:user).permit(:first_name, :last_name, :email)
    end
end
