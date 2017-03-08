class Material < ApplicationRecord

  has_and_belongs_to_many :job_entries
  has_one :material_cost,  dependent: :destroy
  has_one :material_charge, dependent:  :destroy

  attr_accessor :cost_per_sqm, :ink_per_sqm, :factor

  def init_after_create
    return if @total_cost
    # these have got values by Rails (in new) IF you have them
    # in the call to 'new'
    @cost_per_sqm = @cost_per_sqm.to_f
    @ink_per_sqm  = @ink_per_sqm.to_f
    # (you have forgot this as attr_accessor?)
    @factor       = @factor.to_f
    @total_cost   = @cost_per_sqm + @ink_per_sqm
  end




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
    init_after_create
    @material_cost = self.create_material_cost(
    cost_a4: @total_cost * A4_FACTOR,
    cost_a3: @total_cost * A3_FACTOR,
    cost_a2: @total_cost * A2_FACTOR,
    cost_a1: @total_cost * A1_FACTOR,
    cost_b0: @total_cost * B0_FACTOR,
    cost_b1: @total_cost * B1_FACTOR,
    cost_b2: @total_cost * B2_FACTOR,
    cost_b3: @total_cost * B3_FACTOR,
    cost_b4: @total_cost * B4_FACTOR
    )
  end

  def set_material_charge
    init_after_create
    @material_charge = self.create_material_charge(
    sell_a4: @total_cost * A4_FACTOR * @factor,
    sell_a3: @total_cost * A3_FACTOR * @factor,
    sell_a2: @total_cost * A2_FACTOR * @factor,
    sell_a1: @total_cost * A1_FACTOR * @factor,
    sell_b0: @total_cost * B0_FACTOR * @factor,
    sell_b1: @total_cost * B1_FACTOR * @factor,
    sell_b2: @total_cost * B2_FACTOR * @factor,
    sell_b3: @total_cost * B3_FACTOR * @factor,
    sell_b4: @total_cost * B4_FACTOR * @factor
    )

  end


end
