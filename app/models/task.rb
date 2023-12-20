class Task < ApplicationRecord
  CATEGORY = ["Quotidienne", "Travail", "Hobbies", "Tâches ménagères", "Autre"]
  STATUS = ["En attente", "En cours", "Terminée"]
  PRIORITY = ["Moyenne", "Faible", "Elevée"]
  USERS = @users.nickname
  ASSIGNED_USERS = ["Drakie", "Popopom", "Goldie", "TheFirst", "Crapouax"]


  # validates :name, presence: :true
  # validates :description, presence: :true
  # validates :deadline, presence: :true


  # validates :user, presence: :true
  # validates :user, inclusion: { in: USERS  }

  # validates :users, presence: :true
  # validates :users, inclusion: { in: USERS  }

  # validates :category, presence: :true
  # validates :category, inclusion: { in: CATEGORY  }

  # validates :status, presence: :true
  # validates :status, inclusion: { in: STATUS  }

  # validates :priority, presence: :true
  # validates :priority, inclusion: { in: PRIORITY  }

end
