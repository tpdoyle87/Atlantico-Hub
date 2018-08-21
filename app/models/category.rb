class Category < ApplicationRecord
  has_many :assets, :priorities
  validates :name, presence: true
end
