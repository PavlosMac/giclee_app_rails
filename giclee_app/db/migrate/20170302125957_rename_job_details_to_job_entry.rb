class RenameJobDetailsToJobEntry < ActiveRecord::Migration[5.0]
  def change
    rename_table :job_details, :job_entry
   end
end
