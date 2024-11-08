class AddImageToMenus < ActiveRecord::Migration[7.2]
  def change
    add_column :menus, :image, :string
  end
end
