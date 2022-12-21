class AddEndingDateToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :ending_date, :date
  end
end
