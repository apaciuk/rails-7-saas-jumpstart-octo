# frozen_string_literal: true

# Below are the routes for madmin
namespace :madmin do
  resources :services
  resources :announcements
  resources :notifications
  namespace :active_storage do
    resources :blobs
  end
  namespace :active_storage do
    resources :attachments
  end
  namespace :active_storage do
    resources :variant_records
  end
  resources :users
  root to: 'dashboard#show'
end
