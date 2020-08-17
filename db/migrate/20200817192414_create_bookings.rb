class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :printer, null: false, foreign_key: true
      t.datetime :meeting_time
      t.string :status

      t.timestamps
    end
  end
end
