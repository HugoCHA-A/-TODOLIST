class AssignedUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :assigned_users do |t|
    t.references  :task, foreign_key: true
    t.references  :user, foreign_key: true
    end
  end
end
