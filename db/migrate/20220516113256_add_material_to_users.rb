class AddMaterialToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :title, :string
    add_column :users, :start, :string
    add_column :users, :end, :string
    add_column :users, :checkbox, :boolean
  end
end
