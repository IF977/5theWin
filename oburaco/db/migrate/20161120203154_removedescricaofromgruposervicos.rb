class Removedescricaofromgruposervicos < ActiveRecord::Migration
  def change
    remove_column :grupo_servicos, :descricao, :string
  end
end
