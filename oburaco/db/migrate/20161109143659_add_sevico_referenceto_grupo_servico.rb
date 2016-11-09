class AddSevicoReferencetoGrupoServico < ActiveRecord::Migration
  def change
    add_foreign_key :servicos, :grupo_servicos
    add_foreign_key :demandas, :servicos
  end
end
