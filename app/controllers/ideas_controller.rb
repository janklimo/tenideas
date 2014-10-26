class IdeasController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @idea = current_user.ideas.build(idea_params)
    if @idea.save
      flash[:notice] = "Great stuff. Your ideas were saved!"
      redirect_to current_user
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def idea_params
      params.require(:idea).permit(:recipient, :idea1, :idea2, :idea3, :idea4, :idea5, :idea6, :idea7, :idea8, :idea9, :idea10, :featured)
    end
end
