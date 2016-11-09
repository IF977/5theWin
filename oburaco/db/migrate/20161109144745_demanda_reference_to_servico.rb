class DemandaReferenceToServico < ActiveRecord::Migration
  def change
    add_reference :demandas, :servicos, index: true, foreign_key: true
  end
end
