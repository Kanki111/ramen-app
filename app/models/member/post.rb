class Member::Post < ApplicationRecord
    has_many :comments

    mount_uploader :image, ImageUploader
    has_one_attached :image
    has_rich_text :content
end
