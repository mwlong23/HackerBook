class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:landing]
  def landing
    if current_user
      @post = Post.new
      render :index
    else
      render :landing
    end
  end

  private
  def set_user
    @user = current_user
  end
end
