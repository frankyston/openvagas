class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user
    mail to: @user.email, subject: 'Bem vindo ao Open Vagas'
  end
end
