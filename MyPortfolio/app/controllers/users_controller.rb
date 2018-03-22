class UsersController < ApplicationController

  def index
    @user = User.first
    @projects = @user.projects.order(created_at: :asc)
    # render :index
  end



end
