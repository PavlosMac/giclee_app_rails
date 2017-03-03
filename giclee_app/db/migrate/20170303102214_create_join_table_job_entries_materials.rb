class CreateJoinTableJobEntriesMaterials < ActiveRecord::Migration[5.0]
  def change
    create_join_table  :job_entries, :materials do |t|
      t.index :job_entry_id
      t.index :material_id
    end
  end
end
