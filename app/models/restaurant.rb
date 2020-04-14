class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  belongs_to :user

  vaildates :name, presence: true
  validates :cuisine_id, presence: true
  validates :form_id, presence: true
  validates :prefecture_id, presence: true
  validates :city, presence: true
end
