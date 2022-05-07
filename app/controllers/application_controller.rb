class ApplicationController < ActionController::Base
    before_action :get_user

    def get_user
        @user = current_user
    end
end
