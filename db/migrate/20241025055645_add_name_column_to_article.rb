class AddNameColumnToArticle < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :name, :string
  end
end
