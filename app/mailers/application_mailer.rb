# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'xhostcom@gmail.com'
  layout 'mailer'
end
