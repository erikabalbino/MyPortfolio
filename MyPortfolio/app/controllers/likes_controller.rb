class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    project = Project.find params[:project_id]
    like = Like.new user: current_user, project: project
    like.save

    redirect_to project_path(project), notice: 'Liked'

    # if !can?(:like, project)
    #   redirect_to project, alert: 'can\'t like project'
    # elsif like.save
    #   # redirect_to project_path(project), notice: 'Liked'
    #   redirect_to project, notice: 'Liked'
    # else
    #   redirect_to project, alert: 'Not Liked'
    # end
  end

  def destroy
    like = Like.find params[:id]
    like.destroy
    redirect_to like.project, notice: 'Like removed'

    # if can? :destroy, like
    #   like.destroy
    #   # q = like.question
    #   # redirect_to question_path(q), notice: 'Like removed'
    #   redirect_to like.project, notice: 'Like removed'
    # else
    #   redirect_to like.project, alert: 'can\'t delete like'
    # end
  end
end
