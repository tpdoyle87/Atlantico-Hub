class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :assets
  has_many :margin_calls
  has_many :priorities

  devise :database_authenticatable, :timeoutable,
         :recoverable, :rememberable, :validatable

  def margin_call
    margin_calls.first
  end

  def asset_value(asset)
    assets.where(name: "#{asset}").first.amount
  end

  def grab_stocks_value
    stocks = assets.where(category_id: 5)
    total = 0
    stocks.each do |stock|
      total += stock.amount
    end
    total
  end
end
