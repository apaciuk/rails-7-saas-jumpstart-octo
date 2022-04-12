# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                         :bigint(8)        not null, primary key
#  admin                      :boolean          default(FALSE)
#  announcements_last_read_at :datetime
#  confirmation_sent_at       :datetime
#  confirmation_token         :string
#  confirmed_at               :datetime
#  current_sign_in_at         :datetime
#  current_sign_in_ip         :string
#  email                      :string           default(""), not null
#  encrypted_password         :string           default(""), not null
#  first_name                 :string
#  last_name                  :string
#  last_sign_in_at            :datetime
#  last_sign_in_ip            :string
#  remember_created_at        :datetime
#  reset_password_sent_at     :datetime
#  reset_password_token       :string
#  role                       :integer(4)       default("user"), not null
#  sign_in_count              :integer(4)       default(0), not null
#  unconfirmed_email          :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  devise :masqueradable, :database_authenticatable, :confirmable, :registerable, :trackable, :recoverable,
         :rememberable, :validatable, :omniauthable
  # Roles, add other roles as required
  enum role: {
    user: 0,
    member: 1
  }, _prefix: true

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

  private

  # Example role set method
  def set_alt_role
    case role.to_sym
    when :member
      self.role = :member
    end
  end
end
