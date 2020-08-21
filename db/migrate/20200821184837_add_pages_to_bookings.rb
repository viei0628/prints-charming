class AddPagesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :pages, :integer
  end
end
