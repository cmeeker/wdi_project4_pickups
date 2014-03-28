class UserMailer < ActionMailer::Base
  SM = "meekthegreek@gmail.com"
  default from: SM

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome",  reply_to: SM, bcc: SM)
  end
end
