class RemoveGukNameFromJobEntry < ActiveRecord::Migration[5.0]
  def change
    remove_column :job_entries, :guk_name, :string
  end
end
