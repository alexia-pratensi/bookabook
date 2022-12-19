class BookingsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @booking = Booking.new(booking_params)
    @booking.book = @book
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to dashboard_path, notice: 'Réservation validée !'
    else
      redirect_to book_path, notice: 'Réservation annulée !'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to dashboard_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
