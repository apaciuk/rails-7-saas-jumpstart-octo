# frozen_string_literal: true

class UserRole < ActiveRecord::Base
  has_and_belongs_many :users, :optional => true
end