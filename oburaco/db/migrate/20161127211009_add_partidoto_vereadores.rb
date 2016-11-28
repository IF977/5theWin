class AddPartidotoVereadores < ActiveRecord::Migration
  def change
    add_column :vereador, :partido, :string
  end
end
