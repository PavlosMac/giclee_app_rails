class DropJobEntriesPricingSystem < ActiveRecord::Migration[5.0]
    def up
    drop_table :job_entries_pricing_systems
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
