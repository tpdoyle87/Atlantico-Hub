class MarginCall < ApplicationRecord
  belongs_to :user
  validates :call_cents, presence: true
  validates :requirement_cents, presence: true
  validates :guarantee_cents, presence: true
  monetize :call_cents
  monetize :requirement_cents
  monetize :guarantee_cents
end
