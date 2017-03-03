class RenameJobEntryToJobEntries < ActiveRecord::Migration[5.0]
  def change
    rename_table :job_entry, :job_entries
   end
end
