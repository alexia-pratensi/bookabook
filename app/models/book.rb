class Book < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :year, presence: true
  validates :publisher, presence: true
  validates :price_per_day, presence: true

# pour photo seed
  has_one_attached :photo

end
