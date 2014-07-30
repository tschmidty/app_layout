class CreateCreations < ActiveRecord::Migration
  def change
    create_table :creations do |t|
      t.string :name
      t.string :stage
      t.integer :revision
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :project_id
      t.string :file_file_name
      t.string :file_content_type
      t.integer :file_file_size
      t.datetime :file_updated_at
      t.integer :designer_id
      t.integer :hours
      t.integer :client_id
      t.string :status
      t.string :color_space
      t.integer :bleed
      t.integer :estimate_id

      t.timestamps
    end
  end
end
