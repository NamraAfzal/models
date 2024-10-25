class RemoveColumnsFromProducts < ActiveRecord::Migration[7.1]
  def up
    remove_column :products, :student_id
  end

  def down
    add_column :products, :student_id, :integer
  end
end
