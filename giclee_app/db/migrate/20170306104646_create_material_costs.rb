class CreateMaterialCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :material_costs do |t|
      t.float :cost_a4, :cost_a3, :cost_a2, :cost_a1, :cost_b0, :cost_b1, :cost_b2
      t.float :cost_b3, :cost_b4
      t.timestamps
    end
  end
end
