class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      # change_column :products, :name, :string, :string, :limit => 25 #By default SQL String limit 255 character
      # change_column_null :name, false

      #Ex:- change_column("admin_users", "email", :string, :limit =>25)
      #Ex:- change_column("admin_users", "email", :string, :limit =>25)

      t.timestamps
    end
  end
end
