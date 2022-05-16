class UserMailer < ApplicationMailer
    default from: 'infolibrary7@gmail.com'

    def pass_email
        @user = params[:user]
        #@url  = 'http://localhost:3000/users/sign_in'
        #@url  = 'https://online--books.herokuapp.com/users/password/new'
        #@testnitoken = params[:user].signed_id(purpose: "password_reset")
        @token = @user.send_reset_password_instructions
        #mail(to: @user.email, subject: 'onlineLibrary')
    end
end
