class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_one_attached :photo

  validates :brand, :model, :fuel, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1886, less_than_or_equal_to: Time.now.year }

end
