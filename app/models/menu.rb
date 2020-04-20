class Menu < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  mount_uploader :photo, ImageUploader

  validates :menuname, presence: true
  validates :price, presence: true
end
