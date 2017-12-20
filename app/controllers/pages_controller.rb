class PagesController < ApplicationController
  before_action :set_user, except: :landing
  def landing
    @post = Post.new
  end

  def index

  end

  private
  def set_user
    @user = current_user
  end
  end
