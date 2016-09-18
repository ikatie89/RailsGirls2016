class Entry < ApplicationRecord
  validates :title, presence: true
  mount_uploader :photo, PictureUploader
end