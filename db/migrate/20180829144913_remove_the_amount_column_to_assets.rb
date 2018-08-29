class RemoveTheAmountColumnToAssets < ActiveRecord::Migration[5.2]
  def change
    remove_column :assets, :amount_cents
  end
end
