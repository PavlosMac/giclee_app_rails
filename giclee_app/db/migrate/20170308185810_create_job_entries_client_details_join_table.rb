class CreateJobEntriesClientDetailsJoinTable < ActiveRecord::Migration[5.0]
    def change
    create_table :job_entries_client_details, id: false do |t|
      t.integer :job_entry_id
      t.integer :client_detail_id
    end

    add_index :job_entries_client_details, :job_entry_id
    add_index :job_entries_client_details, :client_detail_id
  end
end
