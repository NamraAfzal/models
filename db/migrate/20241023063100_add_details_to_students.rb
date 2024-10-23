class AddDetailsToStudents < ActiveRecord::Migration[7.1]
  def change
    # add_column :students, :part_number, :string
    add_column :students, :fees, :decimal
  end
end
