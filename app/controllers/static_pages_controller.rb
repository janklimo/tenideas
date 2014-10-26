class StaticPagesController < ApplicationController
  def home
  	@idea = current_user.ideas.build if user_signed_in?
  	@featured_user = User.find_by(id: 1)

  end

  def about
  end

  def contact
  end

end
