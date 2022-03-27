# frozen_string_literal: true

class UserRole < ActiveRecord::Base
  belongs_to_many :users, :optional => true
end