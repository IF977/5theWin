class AddImageToVereador < ActiveRecord::Migration
  def change
    add_column :vereador, :imagem, :text
  end
end
