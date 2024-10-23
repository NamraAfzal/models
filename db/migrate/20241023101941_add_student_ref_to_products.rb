class AddStudentRefToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :student, null: false, foreign_key: true
  end
end
