class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, :author, :rating, presence: true
  validates :rating, numericality: true, inclusion: { in: 1..5 }
end
