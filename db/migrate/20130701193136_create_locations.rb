class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :bank_name
      t.float :fee
      t.float :latitude
      t.float :longitude
    end
  end
end
