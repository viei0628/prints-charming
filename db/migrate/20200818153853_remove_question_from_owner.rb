class RemoveQuestionFromOwner < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :is_owner?, :is_owner
  end
end
