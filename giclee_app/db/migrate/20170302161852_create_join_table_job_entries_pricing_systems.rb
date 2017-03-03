class CreateJoinTableJobEntriesPricingSystems < ActiveRecord::Migration[5.0]
  def change
    create_join_table  :job_entries, :pricing_systems do |t|
      t.index :job_entry_id
      t.index :pricing_system_id
    end
  end
end
