class UserNotifier < ActionMailer::Base
  default :from => 'jan.klimo@gmail.com'

  # send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => @user.name.split[0] + ", welcome to Ten ideas :-)")
  end
end
