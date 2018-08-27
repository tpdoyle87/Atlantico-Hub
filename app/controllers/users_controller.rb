class UsersController < ApplicationController

def show
  @user = current_user
end

def edit

end

# def sort
#   params[:category].each_with_index do |id, index|
#     Category.where(id: id).update_all(position: index + 1)
#   end
#   head :ok
# end

def update
  sort
end

end

