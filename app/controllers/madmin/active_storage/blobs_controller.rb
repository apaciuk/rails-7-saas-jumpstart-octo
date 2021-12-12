# frozen_string_literal: true

module Madmin
  module ActiveStorage
    class BlobsController < Madmin::ResourceController # rubocop:todo Style/Documentation
      def new
        super
        @record.assign_attributes(filename: '')
      end
    end
  end
end
