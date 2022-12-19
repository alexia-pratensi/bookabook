class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def dashboard
    @books = current_user.books
    @bookings = current_user.bookings
  end


  def destroy
  # suppression des books créer
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to dashboard_path, status: :see_other
  # suppression des réservations faites
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to dashboard_path, status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :author, :year, :publisher, :price_per_day, :photo)
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
