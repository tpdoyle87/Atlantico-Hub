class CategoriesController < ApplicationController
  def sort
    params[:category].each_with_index do |id, index|
      Category.where(id: id).update_all(position: index + 1)
      Category.where(id: id).update_all(deny: false)
    end
    @categories = Category.denied
    @margin_call = current_user.margin_call
    respond_to do |format|
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  def deny
    params[:category].each do |id|
      Category.where(id: id).update_all(deny: true)
    end
    head :ok
  end

  def using
    @categories = Category.not.denied
  end
end
