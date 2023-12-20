class User < ApplicationRecord
  # has_many :tasks
  validates :nickname, presence: :true
  validates :email, presence: :true
end
