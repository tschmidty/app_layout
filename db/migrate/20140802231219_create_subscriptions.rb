class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :plan_id
      t.integer :client_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
