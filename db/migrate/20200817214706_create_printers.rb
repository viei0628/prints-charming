class CreatePrinters < ActiveRecord::Migration[6.0]
  def change
    create_table :printers do |t|
      t.integer :price
      t.string :model
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
