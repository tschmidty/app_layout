class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.integer :hours
      t.decimal :rate
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
