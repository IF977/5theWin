class RenameTable < ActiveRecord::Migration
  def change
    rename_table :vereadors, :vereador
  end
end
