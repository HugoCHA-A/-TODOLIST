class User < ApplicationRecord
  # has_many :tasks
  has_many :assigned_users
  
  validates :nickname, presence: :true
  validates :email, presence: :true
end
