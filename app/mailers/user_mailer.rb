class UserMailer < ApplicationMailer
  default from: 'odn.spencer@gmail.com'

  def inquiry_email (user)
    @user = user
    mail(to: 'odn.spencer@gmail.com', subject: "New Client!", template_path: 'user_mailer', template_name: 'inquiry_email' )
  end


  def inquiry_email_response (user)
    @user = user
    mail(to: @user.email, subject: "Thank you for submitting a quote!", template_path: 'user_mailer', template_name: 'inquiry_email_response')
  end


end
