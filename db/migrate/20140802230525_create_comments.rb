class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :creation_id
      t.integer :user_id
      t.string :user_type
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
