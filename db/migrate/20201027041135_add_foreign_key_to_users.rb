class AddForeignKeyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :users, :roles
  end
end
