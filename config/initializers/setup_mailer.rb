class DevelopmentMailInterceptor
  def self.delivering_email(message)
    if Rails.env.development? || Rails.env == 'homologacao'
      message.subject = "[#{Rails.env}] #{message.subject}"
      message.to = "contato@hummbrownies.com"
      message.bcc = []
    else
    end
  end
end

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)

ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "hummbrownies.com",
    :user_name            => "contato@hummbrownies.com",
    :password             => "24537868",
    :authentication       => "plain",
    :enable_starttls_auto => true
}
