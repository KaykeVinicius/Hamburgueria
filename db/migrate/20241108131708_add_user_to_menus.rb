class AddUserToMenus < ActiveRecord::Migration[7.2]
  def change
    add_reference :menus, :user, null: false, foreign_key: true
  end
end