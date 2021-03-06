class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true

  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end
