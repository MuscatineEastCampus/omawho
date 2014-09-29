class UserMailer < ActionMailer::Base
  @email_display_name = "WeAreMuscatine"
  address = Mail::Address.new "andrewelectric@gmail.com"
  
  address.display_name = @email_display_name
  
  default from: address.format

  def reset_password_email(user, email_display_name=@email_display_name)
    @user = user
    @email_display_name = email_display_name
    mail(:to => user.email, :subject => "Reset your password.")
  end
end
