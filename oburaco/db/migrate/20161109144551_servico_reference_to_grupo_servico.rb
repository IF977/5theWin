class ServicoReferenceToGrupoServico < ActiveRecord::Migration
  def change
    add_reference :servicos, :grupo_servicos, index: true, foreign_key: true
  end
end
