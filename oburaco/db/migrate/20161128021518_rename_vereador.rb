class RenameVereador < ActiveRecord::Migration
  def self.up
    rename_table :vereador, :vereadors
  end

  def self.down
    rename_table :vereadors, :vereador
  end
end

