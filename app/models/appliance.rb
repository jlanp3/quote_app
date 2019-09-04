class Appliance < ApplicationRecord
  has_one_attached :logo
  has_many :quote_appliances
  has_many :quotes, through: :quote_appliances
  validates :brand, presence: true
  validates :equipment, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
