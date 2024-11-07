class CreateMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :menus do |t|
      t.string :Titulo
      t.text :Descricao
      t.decimal :Preco

      t.timestamps
    end
  end
end
