class UserMailer < ApplicationMailer
    default from: 'infolibrary7@gmail.com'

    def pass_email
        @user = params[:user]
        #@url  = 'http://localhost:3000/users/sign_in'
        @url  = 'https://online--books.herokuapp.com/users/sign_in'
        mail(to: @user.email, subject: 'onlineLibrary')
    end
end
