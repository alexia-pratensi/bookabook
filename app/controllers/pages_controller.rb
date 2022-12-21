class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def dashboard
    @books = current_user.books
    @bookings = current_user.bookings
  end


  def destroy_booking
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to dashboard_path, status: :see_other
  # suppression des books créer
  end

  def destroy
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to dashboard_path, status: :see_other
  # suppression des réservations faites
  end


end
