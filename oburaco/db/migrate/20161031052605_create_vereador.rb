class CreateVereador < ActiveRecord::Migration
  def change
    create_table :vereadors do |t|
      t.text :nome
      t.text :email
      t.text :telefone
      
      t.timestamps
    end
  end
end


