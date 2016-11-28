class RemoveDescricaoTextFromServicos < ActiveRecord::Migration
  def change
    remove_column :servicos, :descricao, :string
    remove_column :servicos, :text, :string
  end
end
