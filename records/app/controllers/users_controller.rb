class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_url(@user)
        end

    end

    def show
        render :show
    end

    private
        def user_params
        params.require(:cat).permit(:email, :password)
    end
end