# frozen_string_literal: true

class User < ApplicationRecord
  devise :masqueradable, :database_authenticatable, :confirmable, :registerable, :trackable, :recoverable,
         :rememberable, :validatable, :omniauthable 
  enum role: %i[user member] # add other roles as req
  after_initialize :set_default_role, if: :create_user 
  def set_default_role 
     self.role ||= :user
  end
  # Validations, Names, Avatars
  validates :email, presence: true
  validates :email, uniqueness: true
  # validates :username, presence: true
  has_one_attached :avatar
  has_person_name
  # Roles

  # Notifications & Services
  has_many :notifications, as: :recipient
  has_many :services
end
