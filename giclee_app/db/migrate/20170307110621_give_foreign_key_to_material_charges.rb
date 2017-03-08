class GiveForeignKeyToMaterialCharges < ActiveRecord::Migration[5.0]
  def change
    add_reference :material_charges, :material, index: true
    add_foreign_key :material_charges, :materials
  end
end
