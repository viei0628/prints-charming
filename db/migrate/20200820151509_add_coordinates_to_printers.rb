class AddCoordinatesToPrinters < ActiveRecord::Migration[6.0]
  def change
    add_column :printers, :latitude, :float
    add_column :printers, :longitude, :float
  end
end
