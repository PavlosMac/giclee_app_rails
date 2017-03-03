class AddOriginalsToJobDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :job_details, :originals, :integer
  end
end
