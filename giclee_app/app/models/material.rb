class Material < ApplicationRecord

  belongs_to :job_entry
  has_one :material_cost, dependent: :destroy
  has_one :material_charge, dependent: :destroy


  A4_FACTOR = 0.0626514876
  A3_FACTOR = 0.124548139
  A2_FACTOR = 0.249096276
  A1_FACTOR = 0.499702226
  B0_FACTOR = 1.41585523
  B1_FACTOR = 0.706656651
  B2_FACTOR = 0.353328326
  B3_FACTOR = 0.176664163
  B4_FACTOR = 0.0878836952

after_create :set_material_cost, :set_material_charge

  def set_material_cost
    @material_cost = self.create_material_cost(
    cost_a4: (cost_per_sqm + ink_per_sqm )* A4_FACTOR,
    cost_a3: (cost_per_sqm + ink_per_sqm )* A3_FACTOR,
    cost_a2: (cost_per_sqm + ink_per_sqm )* A2_FACTOR,
    cost_a1: (cost_per_sqm + ink_per_sqm )* A1_FACTOR,
    cost_b0: (cost_per_sqm + ink_per_sqm )* B0_FACTOR,
    cost_b1: (cost_per_sqm + ink_per_sqm )* B1_FACTOR,
    cost_b2: (cost_per_sqm + ink_per_sqm )* B2_FACTOR,
    cost_b3: (cost_per_sqm + ink_per_sqm )* B3_FACTOR,
    cost_b4: (cost_per_sqm + ink_per_sqm )* B4_FACTOR
    )
  end

  def set_material_charge
    @material_charge = self.create_material_charge(
    sell_a4: (cost_per_sqm + ink_per_sqm )* (A4_FACTOR * factor),
    sell_a3: (cost_per_sqm + ink_per_sqm )* (A3_FACTOR * factor),
    sell_a2: (cost_per_sqm + ink_per_sqm )* (A2_FACTOR * factor),
    sell_a1: (cost_per_sqm + ink_per_sqm )* (A1_FACTOR * factor),
    sell_b0: (cost_per_sqm + ink_per_sqm )* (B0_FACTOR * factor),
    sell_b1: (cost_per_sqm + ink_per_sqm )* (B1_FACTOR * factor),
    sell_b2: (cost_per_sqm + ink_per_sqm )* (B2_FACTOR * factor),
    sell_b3: (cost_per_sqm + ink_per_sqm )* (B3_FACTOR * factor),
    sell_b4: (cost_per_sqm + ink_per_sqm )* (B4_FACTOR * factor)
    )

  end


end
