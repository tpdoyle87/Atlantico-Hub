class AddPostionToPriority < ActiveRecord::Migration[5.2]
  def change
    add_column :priorities, :position, :integer
  end
end
