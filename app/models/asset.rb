class Asset < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, :amount_cents, :ranking, presence: true
  validates :deny, :guarantee, inclusion: { in: [true, false] }
  monetize :amount_cents

end
