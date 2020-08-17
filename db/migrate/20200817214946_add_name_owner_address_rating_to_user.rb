class AddNameOwnerAddressRatingToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :text
    add_column :users, :rating, :integer
    add_column :users, :is_owner?, :boolean
  end
end