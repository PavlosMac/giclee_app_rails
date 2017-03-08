class GiveForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_reference :material_costs, :material, index: true
    add_foreign_key :material_costs, :materials
  end
end
