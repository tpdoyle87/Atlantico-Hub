class UsersController < ApplicationController

  def show
    @user = current_user
    @categories = Category.denied
    @margin_color = "#EE5F5B"
    # @categories = Category.where(deny: false).order(:position)
  end

end

