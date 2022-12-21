class BookingsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @booking = Booking.new(booking_params)
    @booking.book = @book
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to dashboard_path, notice: 'Réservation validée !'
    else
      redirect_to book_path(@book), notice: 'Vous devez indiquer les dates !'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @book = @booking.book
    # @room = Room.find(params[:room_id])
    @booking.user_id = current_user.id
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
