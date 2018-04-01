class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @user = User.first
    @projects = @user.projects.order(created_at: :asc)
    # render :index
  end

  def create
    @user = User.new user_params

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing in!"
      redirect_to root_path
    else
      render :new
    end
  end

  def contact_me
    @data = contact_me_params
    ContactMailer
      .contact_me_mailer(@data)
      .deliver_now
      # .deliver_later(wait: 10.seconds)

    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end

  def contact_me_params
    params.require(:contact_me).permit!
  end

end
