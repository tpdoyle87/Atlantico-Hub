class PrioritiesController < ApplicationController
  def show
    @user = current_user
    @categories = Category.denied
    newcall = @user.margin_call
    newcall.guarantee = newcall.requirement
    newcall.save

  end
end
