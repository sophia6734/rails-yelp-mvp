class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy

  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
