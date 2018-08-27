class Category < ApplicationRecord
  has_many :assets
  has_many :priorities
  validates :name, presence: true

end
