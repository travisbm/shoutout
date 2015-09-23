class UsersController < ApplicationController
  def index
    users = User.all
    render locals: { users: users }
  end

  def show
    user = User.find(params[:id])
    render locals: { user: user }
  end

  def create
  end

  def update
  end

  def destroy
  end
end
