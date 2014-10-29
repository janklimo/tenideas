class IdeasController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

  def index
    respond_to do |format|
      format.html { 
        @ideas = Idea.where(recipient: current_user.id).order( 'created_at DESC' ).paginate(:page => params[:page])
      }

      format.json { render json: @ideas = Idea.where(recipient: current_user.id) }
    end
  end

  def show
    @idea = Idea.find(params[:id])
    #render json: @idea 
  end

  # POST      /ideas(.:format)
  def create
    @idea = current_user.ideas.build(idea_params)
    if @idea.save
      flash[:notice] = "Great stuff. Your ideas were saved!"
      redirect_to current_user
    else
      render 'static_pages/home'
    end
  end

  # DELETE    /ideas/:id(.:format)
  def destroy
  end

  private

    def idea_params
      params.require(:idea).permit(:recipient, :idea1, :idea2, :idea3, :idea4, :idea5, :idea6, :idea7, :idea8, :idea9, :idea10, :featured)
    end
end
