class CreateDemandas < ActiveRecord::Migration
  def change
    create_table :demandas do |t|
      t.string :bairro
      t.text :rua
      t.integer :numero
      t.integer :RPA
      t.float :latitude
      t.float :longitude
      t.string :situa
      t.date :data_ult_situa
      t.date :data

      t.timestamps null: false
    end
  end
end
