class Member::Post < ApplicationRecord
    has_many :comments

    mount_uploader :image, ImageUploader
    has_one_attached :image
    has_rich_text :content
    has_one :spot, dependent: :destroy
    accepts_nested_attributes_for :spot
    geocoded_by :place
  after_validation :geocode, if: :address_changed?
end
