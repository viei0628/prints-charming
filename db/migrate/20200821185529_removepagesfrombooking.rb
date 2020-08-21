class Removepagesfrombooking < ActiveRecord::Migration[6.0]
  def change
      remove_column :bookings, :pages
  end
end
