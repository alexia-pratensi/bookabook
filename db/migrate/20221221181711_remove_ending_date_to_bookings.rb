class RemoveEndingDateToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :ending_date, :string
  end
end
