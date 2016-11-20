class RemoveLatitudeandLongitudeFromDemandas < ActiveRecord::Migration
  def change
    remove_column :demandas, :latitude, :float
    remove_column :demandas, :longitude, :float
  end
end
