class AddLargerColumnsToMarginCalls < ActiveRecord::Migration[5.2]
  def change
    change_column :margin_calls, :call_cents, :integer, :limit => 5
    change_column :margin_calls, :requirement_cents, :integer, :limit => 5
    change_column :margin_calls, :guarantee_cents, :integer, :limit => 5
  end
end
