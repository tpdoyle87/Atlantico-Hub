class Priority < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :ranking, presence: true
end
