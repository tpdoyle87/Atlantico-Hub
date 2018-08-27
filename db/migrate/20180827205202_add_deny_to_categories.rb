class AddDenyToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :deny, :boolean, default: :false
  end
end
