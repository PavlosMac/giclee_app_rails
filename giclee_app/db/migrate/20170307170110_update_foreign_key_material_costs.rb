class UpdateForeignKeyMaterialCosts < ActiveRecord::Migration[5.0]
  def change
    # remove the old foreign_key
    remove_foreign_key :material_costs, :materials

    # add the new foreign_key
    add_foreign_key :material_costs, :materials, on_delete: :cascade
  end
end
