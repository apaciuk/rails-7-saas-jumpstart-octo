# frozen_string_literal: true

class NotificationsController < ApplicationController # rubocop:todo Style/Documentation
  before_action :authenticate_user!

  def index
    # Convert the database records to Noticed notification instances so we can use helper methods
    @notifications = current_user.notifications.map(&:to_notification)
  end
end
