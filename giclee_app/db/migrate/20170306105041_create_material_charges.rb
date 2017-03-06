class CreateMaterialCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :material_charges do |t|
      t.float :sell_a4, :sell_a3, :sell_a2, :sell_a1, :sell_b0, :sell_b1, :sell_b2
      t.float :sell_b3, :sell_b4
      t.timestamps
    end
  end
end
