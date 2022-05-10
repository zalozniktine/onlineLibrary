class UsersController < ApplicationController
    def import
        User.import(params[:file])
        redirect_to admin_path, notice: "Users imported."

        
        
    end

      def destroy
        User.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to admin_path
      end

      def update
        @user = User.find(params[:id])
        User.find(params[:id]).update_attribute(:admin, 1)
      end
      
end
