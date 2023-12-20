class TasksController < ApplicationController
  require 'date'

  def index
    @tasks = Task.all
    @users = User.all
    @assigned_users = User.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    respond_to do |format|
      if task.save!
        UserMailer.with(user: @user).new_task_mailer.deliver_now
        # format.html { redirect_to(@user, notice: 'Nouvelle tâche créée.') }
        # format.json { render json: @user, status: :created, location: @user }
        redirect_to task_path(task)
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)

    redirect_to task_path(task)
  end


  private

  def task_params
    params.require(:task).permit(:name, :description, :category, :status, :priority, :updated_at, :deadline, :user)
  end
end
