class GiveForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_reference :material_cost, :material

  end
end
