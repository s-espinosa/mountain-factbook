class Mountain < ActiveRecord::Base
  belongs_to :country

  def self.total_annual_climbers
    sum(:annual_climbers)
  end
end
