class Priority < ApplicationRecord
  acts_as_list scope: :category
  belongs_to :user
  belongs_to :category
  validates :ranking, presence: true

  def asset_value(asset)
    assets.find_by(name: "#{asset}").amount_cents
  end

  def grab_stocks_value
    stocks = assets.where(category_id: 5)
    total = 0
    stocks.each do |stock|
      total += stock.amount_cents
    end
    total
  end
end
