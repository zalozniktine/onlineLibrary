class UsersController < ApplicationController
    def import
        User.import(params[:file])
        redirect_to root_url, notice: "Products imported."
      end
end
