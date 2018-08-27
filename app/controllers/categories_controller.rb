class CategoriesController < ApplicationController
  def sort
  params[:category].each_with_index do |id, index|
    Category.where(id: id).update_all(position: index + 1)
  end
  head :ok
end
end
