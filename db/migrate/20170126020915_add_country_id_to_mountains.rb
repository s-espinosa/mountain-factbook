class AddCountryIdToMountains < ActiveRecord::Migration
  def change
    add_column :mountains, :country_id, :integer
  end
end
