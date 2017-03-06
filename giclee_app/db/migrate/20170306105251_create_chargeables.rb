class CreateChargeables < ActiveRecord::Migration[5.0]
  def change
    create_table :chargeables do |t|
      t.float :scan_a4, :scan_a3, :scan_a2, :scan_a1, :scan_a0
      t.float :scan_sr, :scan_hr, :scan_dp, :demarco, :cust_file
      t.float :write_cd, :write_dvd, :overprint_disc, :certs
      t.timestamps
    end
  end
end
