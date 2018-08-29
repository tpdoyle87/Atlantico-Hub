class ProspectsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @prospect = Prospect.new(prospect_params)
    if @prospect.save
      respond_to do |format|
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    end
  end

  private

  def prospect_params
    params.require(:prospect).permit(:name, :email)
  end

end
