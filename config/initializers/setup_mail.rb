ActionMailer::Base.smtp_settings = {
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'robinsonbburkey@gmail.com',
  :password             => '91a82b73c64d55e46fGo',
  :authentication       => :plain,
  :enable_starttls_auto => true
}
