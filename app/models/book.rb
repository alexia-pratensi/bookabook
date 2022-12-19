class Book < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :year, presence: true
  validates :publisher, presence: true
  validates :price_per_day, presence: true
end
