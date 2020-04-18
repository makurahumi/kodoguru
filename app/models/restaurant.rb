class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture
    belongs_to_active_hash :cuisine

  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :menus, dependent: :destroy

  validates :name, presence: true
  validates :cuisine_id, presence: true
  validates :form_id, presence: true
  validates :prefecture_id, presence: true
  validates :city, presence: true

  enum form_id: { '店内飲食可': 1, '店内飲食可・テイクアウトあり': 2, '店内飲食可・テイクアウトあり・デリバリーあり': 3, 
                  'テイクアウトのみ': 4, 'デリバリーのみ': 5, 'テイクアウト・デリバリーのみ': 6, '店頭販売のみ': 7 }
end
