class UsersController < ApplicationController

  def show
    @user = current_user
    @categories = Category.denied
    # @categories = Category.where(deny: false).order(:position)
  end

  def edit

  end


end

