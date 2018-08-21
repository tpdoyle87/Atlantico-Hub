class Asset < ApplicationRecord
  belongs_to :user
  belongs_to :category

   validates :name, :amount, :ranking, presence: true
   validates :deny, :guarantee, inclusion: { in: [true, false] }

end
