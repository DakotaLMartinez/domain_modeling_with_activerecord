class RemoveForeignKeyConstraintFromUserInComments < ActiveRecord::Migration[5.2]
  def change
    if foreign_key_exists?(:comments, :user)
      remove_foreign_key(:comments, :user)
    end
  end
end
