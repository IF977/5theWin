class Addlatitudeandlongitude < ActiveRecord::Migration
  def change
    add_column :demandas, :latitude, :float
    add_column :demandas, :longitude, :float
  end
end
