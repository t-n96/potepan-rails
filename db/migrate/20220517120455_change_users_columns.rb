class ChangeUsersColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :start, :string
    remove_column :users, :end, :string
    remove_column :users, :name, :string
    remove_column :users, :email, :string
    remove_column :users, :ago, :integer
    add_column :users, :start, :date
    add_column :users, :end, :date
  end
end
