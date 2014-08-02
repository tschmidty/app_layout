class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :client_id
      t.datetime :created_at
      t.datetime :updated_at
      t.decimal :cost
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
