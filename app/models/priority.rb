class Priority < ApplicationRecord
  acts_as_list scope: :category
  belongs_to :user
  belongs_to :category
  validates :ranking, presence: true
end
