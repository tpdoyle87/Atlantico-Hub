class AddAmountToAssets < ActiveRecord::Migration[5.2]
  def change
    add_monetize :assets, :amount, currency: { present: false }
  end
end
