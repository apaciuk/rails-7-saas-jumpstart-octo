# frozen_string_literal: true
# examples
# class UserPolicy < ApplicationPolicy
#   role :regular_user,
#        attributes: {
#          show: %i(username name avatar is_confirmed created_at)
#        },
#        associations: {
#          show: %i(posts followers following)
#        },
#        scope: lambda{resource.regular_user_scope}
#
#   role :correct_user,
#        attributes: {
#          show: %i(email phone_number confirmed_at updated_at),
#          update: %i(username email password password_confirmation current_password name avatar)
#        },
#        associations: {
#          show: %i(settings),
#          save: %i(settings)
#        }
#    role :guest,
#        attributes: {
#          show: %i(username first_name last_name avatar),
#          create: %i(username email password password_confirmation first_name last_name avatar)
#        },
#        associations: {}
#
#   # in the query methods, define the roles which are allowed for the particular action
#   def show?
#     allow :guest, :regular_user, :correct_user
#   end
#
#   # or with the allow helper method:
#   def update?
#     allow :regular_user, :correct_user
#   end
#
#   def create?
#     allow :guest, :admin
#   end
# end
