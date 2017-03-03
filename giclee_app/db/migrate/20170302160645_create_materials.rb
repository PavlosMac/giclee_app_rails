class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :product_name, :guk_name
      t.integer :roll_width_in, :roll_length_m, :factor, :rounded_sale_price
      t.float :list_price, :cost_per_sqm, :ink_per_sqm, :supplier_discount, :sell_per_sqm
      t.timestamps
    end
  end
end
