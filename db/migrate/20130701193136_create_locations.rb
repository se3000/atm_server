class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :bank_name
      t.float :fee
      t.point :coordinate, geographic: true
    end
  end
end
