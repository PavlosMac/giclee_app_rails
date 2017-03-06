class FixColumnNameInJobEntry < ActiveRecord::Migration[5.0]
  def change
    rename_column :job_entries, :product_name, :material
    remove_column :job_entries, :guk_name
  end
end
