class Category < ApplicationRecord
  acts_as_list
  has_many :assets
  has_many :priorities
  validates :name, presence: true

end
