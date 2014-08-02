class CreateProjectAssignments < ActiveRecord::Migration
  def change
    create_table :project_assignments do |t|
      t.integer :designer_id
      t.integer :project_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
