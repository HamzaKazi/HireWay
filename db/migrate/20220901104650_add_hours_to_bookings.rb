class AddHoursToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :hours, :integer
  end
end
