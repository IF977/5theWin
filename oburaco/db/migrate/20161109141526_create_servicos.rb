class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.text :nome
      t.string :descricao
      t.string :text

      t.timestamps null: false
    end
  end
end
