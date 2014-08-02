class AddNameToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :name, :string
    add_column :designers, :active, :boolean
  end
end
