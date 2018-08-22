class Asset < ApplicationRecord
  belongs_to :user
  belongs_to :category

   validates :name, :amount, :ranking, presence: true
   validates :deny, :guarantee, inclusion: { in: [true, false] }

end

Asset.new(name: :apple, amount: '10000', ranking: '3',
          deny: false, guarantee: false)
