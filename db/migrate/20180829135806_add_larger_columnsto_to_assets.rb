class AddLargerColumnstoToAssets < ActiveRecord::Migration[5.2]
  def change
    change_column :assets, :amount_cents, :integer, :limit => 5
  end
end
