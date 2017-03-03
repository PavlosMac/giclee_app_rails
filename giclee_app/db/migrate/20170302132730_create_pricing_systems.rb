class CreatePricingSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :pricing_systems do |t|
      t.float :presentation, :standard, :premium, :premium_plus, :canvas_textile, :special_1
      t.timestamps
    end
  end
end
