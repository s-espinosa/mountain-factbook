class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.text      :name
      t.integer   :elevation_in_feet
      t.integer   :annual_climbers

      t.timestamps null: false
    end
  end
end
