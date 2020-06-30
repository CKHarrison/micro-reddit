class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :users
  end
end
