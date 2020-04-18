class Menu < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :menuname, presence: true
  validates :price, presence: true
end
