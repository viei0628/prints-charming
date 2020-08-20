class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :text
      t.references :user, null: false, foreign_key: true
      t.references :printer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
