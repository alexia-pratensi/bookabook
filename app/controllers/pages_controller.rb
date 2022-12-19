class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def dashboard
    @books = current_user.books
    @bookings = current_user.bookings

  end

  # def destroy
  #   @dream = Dream.find(params[:id])
  #   @dream.destroy

  #   redirect_to dashbord_path, status: :see_other
  # end


end
