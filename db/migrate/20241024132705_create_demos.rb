class CreateDemos < ActiveRecord::Migration[7.1]
  def change
    create_table :demos do |t|

      t.timestamps
    end
  end
end
