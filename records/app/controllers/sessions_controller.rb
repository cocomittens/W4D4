class SessionsController < ApplicationController

    def new
        redirect_to new_user_url
    end

    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    end

end