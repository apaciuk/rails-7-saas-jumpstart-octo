# frozen_string_literal: true

class User < ApplicationRecord
  devise :masqueradable, :database_authenticatable, :confirmable, :registerable, :trackable, :recoverable,
         :rememberable, :validatable, :omniauthable 
  # Roles
  enum role:{ user: 0, member: 1 } # add other roles as req
  after_initialize :set_default_role, if: :new_record?
  def set_default_role 
     self.role ||= :user
  end
  # Validations, Names, Avatars
  validates :email, presence: true
  validates :email, uniqueness: true
  # validates :username, presence: true
  has_one_attached :avatar
  has_person_name
  # Notifications & Services
  has_many :notifications, as: :recipient
  has_many :services
  # has_many :members
end
