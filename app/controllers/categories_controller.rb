class CategoriesController < ApplicationController
  def sort
    params[:category].each_with_index do |id, index|
      Category.where(id: id).update_all(position: index + 1)
      Category.where(id: id).update_all(deny: false)
    end
      head :ok
    end
  def deny
    params[:category].each do |id|
      Category.where(id: id).update_all(deny: true)
    end
    head :ok
  end
end
