class ChangeTypeOfFactorInMaterial < ActiveRecord::Migration[5.0]
  def change
    change_column :materials, :factor, :float
  end
end
