class AddStudioHoursToChargeables < ActiveRecord::Migration[5.0]
  def change
    add_column :chargeables, :studio_hours, :float
  end
end
