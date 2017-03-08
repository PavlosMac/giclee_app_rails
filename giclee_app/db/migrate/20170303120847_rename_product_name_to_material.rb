class RenameProductNameToMaterial < ActiveRecord::Migration[5.0]
    def change
    rename_column :job_entries, :product_name, :material
  end
end
