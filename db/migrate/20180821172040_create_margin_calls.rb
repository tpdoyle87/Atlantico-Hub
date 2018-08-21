class CreateMarginCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :margin_calls do |t|
      t.float :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
