class AddImagemtoVereador < ActiveRecord::Migration
  def change
    add_column :vereador, :imagem, :string
    add_column :verador, :partido, :string 
  end
end
