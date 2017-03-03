class CreateJobDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :job_details do |t|
      t.string :product_name, :guk_name
      t.integer :size_width, :size_height, :units, :runs, :prints
      t.float :margin, :per_print, :discount, :price
      t.timestamps
    end
  end
end
