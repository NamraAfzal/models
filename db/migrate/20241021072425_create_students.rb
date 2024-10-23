class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :email
      t.integer :age
      t.string :name

      t.timestamps
    end
    reversible do |direction|
      direction.up do
        execute <<-SQL
         CREATE VIEW students_view AS
         SELECT id, name
         FROM students;
        SQL
      end
      deriection.down do
        execute <<-SQL
         DROP VIEW students_view;
        SQL
      end
    end

  end
  add_column :students, :column_namehome_page, :string

  # def change
  #   change_table :students do |t|
  #     t.remove :email, :age
  #     t.string :part_number
  #     t.rename(:name, :student_name)

  #     t.timestamps
  #   end
  # end
end
