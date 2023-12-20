class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :users, :assigned_users
  end
end
