class CreateGrupoServicos < ActiveRecord::Migration
  def change
    create_table :grupo_servicos do |t|
      t.text :nome
      t.text :descricao

      t.timestamps null: false
    end
  end
end
