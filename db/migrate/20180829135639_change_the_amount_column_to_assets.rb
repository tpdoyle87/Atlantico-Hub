class ChangeTheAmountColumnToAssets < ActiveRecord::Migration[5.2]
  def change
    rename_column :assets, :amount, :amount_cents
  end
end
