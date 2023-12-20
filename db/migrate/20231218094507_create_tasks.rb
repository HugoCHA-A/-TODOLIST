class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :status
      t.string :priority
      t.string :deadline
      t.string :user

      t.timestamps
    end
  end
end
