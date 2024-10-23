class AddStudentRefToSchools < ActiveRecord::Migration[7.1]
  def change
    add_reference :schools, :student, null: false, foreign_key: true
  end
end
