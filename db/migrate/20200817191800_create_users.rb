class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :rating
      t.boolean :owner

      t.timestamps
    end
  end
end
