class UserMailer < ApplicationMailer
  default from: 'hugo.antonietti@hotmail.fr'

  def new_task_mailer
    @task = Task.last
    @user =  User.find_by(nickname: Task.last.user)
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
