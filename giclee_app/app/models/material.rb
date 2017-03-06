class Material < ApplicationRecord
  has_and_belongs_to_many :job_entries
  has_one :material_cost, dependent: :destroy

  after_create :set_material_cost
    A3_FACTOR = 0.124548139
    A4_FACTOR = 0.0626514876
    A2_FACTOR = 0.249096276
    A1_FACTOR = 0.499702226
    B1_FACTOR = 0.706656651
    B2_FACTOR = 0.353328326
    B3_FACTOR = 0.176664163
    B4_FACTOR = 0.0878836952



    private

    def set_material_cost
      
      @material_cost = self.create_material_cost(
        cost_a4: (cost_per_sqm + ink_per_sqm) * A4_FACTOR,
        cost_a3: (cost_per_sqm + ink_per_sqm) * A3_FACTOR,
        cost_a2: (cost_per_sqm + ink_per_sqm) * A2_FACTOR,
        cost_a1: (cost_per_sqm + ink_per_sqm) * A1_FACTOR,
        cost_b1: (cost_per_sqm + ink_per_sqm) * B1_FACTOR,
        cost_b2: (cost_per_sqm + ink_per_sqm) * B2_FACTOR,
        cost_b3: (cost_per_sqm + ink_per_sqm) * B3_FACTOR,
        cost_b4: (cost_per_sqm + ink_per_sqm) * B4_FACTOR
      )
    end

end
