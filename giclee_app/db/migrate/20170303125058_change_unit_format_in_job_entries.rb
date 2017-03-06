class ChangeUnitFormatInJobEntries < ActiveRecord::Migration[5.0]
  def change
    change_column :job_entries, :units, :string
  end
end
