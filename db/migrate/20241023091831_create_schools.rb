class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :part_number

      t.timestamps
    end
  end
end
