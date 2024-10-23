class CreateDisteributors < ActiveRecord::Migration[7.1]
  def up
    create_table :disteributors do |t|
      t.string :name
      t.string :zip_code

      t.timestamps
    end
    execute <<-SQL
      CREATE VIEW disteributors_view AS
      SELECT id, zipcode
      FROM disteributors;
    SQL
    # add_column :students, :address, :string

  end
  def down
    rename_column :students, :email, :gmail
    execute <<-SQL
      DROP VIEW disteributors_view;
    SQL
    drop_table :disteributors
  end
end
