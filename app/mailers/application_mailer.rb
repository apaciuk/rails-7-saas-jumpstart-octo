# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@rails7saas.com'
  layout 'mailer'
end
