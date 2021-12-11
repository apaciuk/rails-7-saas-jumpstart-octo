class ActiveStorage::BlobResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :key
  attribute :filename
  attribute :content_type
  attribute :service_name
  attribute :byte_size
  attribute :checksum
  attribute :created_at, form: false
  attribute :analyzed
  attribute :identified
  attribute :composed
  attribute :preview_image, index: false

  # Associations
  attribute :variant_records
  attribute :attachments

  # Uncomment this to customize the display name of records in the admin area.
  # def self.display_name(record)
  #   record.name
  # end

  # Uncomment this to customize the default sort column and direction.
  # def self.default_sort_column
  #   "created_at"
  # end
  #
  # def self.default_sort_direction
  #   "desc"
  # end
end
