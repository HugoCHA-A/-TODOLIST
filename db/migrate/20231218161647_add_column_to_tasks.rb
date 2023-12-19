class AddColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :users, :string
  end
end
