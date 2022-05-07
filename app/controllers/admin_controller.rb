class AdminController < ApplicationController
    before_action :authenticate_user!, :authenticate_admin, :get_users

    def admin
        
    end

    def authenticate_admin
        #set user to current_user
        unless current_user.admin == 1
            redirect_to root_path
        end
    end

    def get_users
        @users = User.all
    end

    
end
