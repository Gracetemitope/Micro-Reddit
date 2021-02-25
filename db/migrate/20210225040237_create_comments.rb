class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :comment
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
