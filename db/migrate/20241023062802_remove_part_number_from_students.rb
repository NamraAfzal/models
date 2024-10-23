class RemovePartNumberFromStudents < ActiveRecord::Migration[7.1]
  def change
    remove_column :students, :part_number, :string
  end
end
