class CreateJoinTableCustomerProduct < ActiveRecord::Migration[7.1]
  def change
    create_join_table :customers, :products, table_name: :categorization do |t|
      t.index [:customer_id, :product_id]
      t.index [:product_id, :customer_id]
    end
  end
end
