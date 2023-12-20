class RemoveColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :assigned_users
  end
end
