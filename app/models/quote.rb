class Quote < ApplicationRecord
  before_save { email.downcase! }
  has_many :quote_appliances
  has_many :appliances, through: :quote_appliances
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }
end