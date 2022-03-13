ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:domain => "yourdomain.com",
:user_name => "username",
:password => "password",
:authentication => "plain",
:enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "yourdomain.com"