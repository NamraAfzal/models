class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :article_id
      t.string :event_id
      t.string :news_id
      t.timestamps
    end
  end
end
