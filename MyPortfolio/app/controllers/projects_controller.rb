class ProjectsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_project, except: [:new, :index, :create]

  def new
    @user = User.find params[:user_id]
    @project = Project.new
  end

  def create
    @user = User.find params[:user_id]
    @project = Project.new project_params
    @project.user = @user

    if @project.save
      redirect_to root_path
    else
      render '/users'
    end
  end

  def show
    @project = Project.find params[:id]
  end

  def edit
    # @project = Project.find params[:id]
  end

  def update
    # @project = Project.find params[:id]
    # @project.slug = nil # this will force friendly_id to regenerate slug
    if @project.update project_params
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    #@project = Project.find params[:id]

    @project.destroy
    redirect_to root_path
  end

  private
  def find_project
    @project = Project.find params[:id]
  end

  def project_params
    params.require(:project).permit(:title, :description, :thumbnail, :project_type)
  end

end
