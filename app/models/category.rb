class Category < ApplicationRecord
  acts_as_list
  has_many :assets
  has_many :priorities
  validates :name, presence: true

  scope :denied, -> { where(deny: false).order(:position) }
end
