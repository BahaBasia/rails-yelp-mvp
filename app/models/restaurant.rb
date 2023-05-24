class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  validates :address, presence: true, uniqueness: true

  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian], allow_nil: false }
end
