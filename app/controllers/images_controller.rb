class ImagesController < ApplicationController
  before_action :authenticate_user!
  # before_action :find_image, :authorize_user!, only: [:destroy]
  before_action :find_image, only: [:destroy]

  def create
    @project = Project.find params[:project_id]
    @image = Image.new image_params
    @image.project = @project

    if @image.save
      redirect_to project_path(@project)
    else
      @images = @project.images.order(created_at: :desc)
      render 'projects/show'
    end
  end

  def destroy
    @image.destroy
    redirect_to project_path(@image.project)
  end

  private
  def image_params
    params.require(:image).permit(:avatar)
  end

  def find_image
    @image ||= Image.find params[:id]
  end

  # def authorize_user!
  #   unless can?(:manage, @image)
  #     flash[:alert] = 'Access Denied!'
  #     redirect_to question_path(@answer.question)
  #   end
  # end
end
