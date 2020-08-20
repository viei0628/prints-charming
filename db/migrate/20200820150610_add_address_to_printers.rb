class AddAddressToPrinters < ActiveRecord::Migration[6.0]
  def change
    add_column :printers, :address, :string
  end
end
