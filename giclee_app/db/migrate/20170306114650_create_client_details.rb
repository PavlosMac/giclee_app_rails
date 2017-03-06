class CreateClientDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :client_details do |t|
      t.string :company_name, :address_1, :address_2, :city, :post_code
      t.string :telephone_number, :mobile_number, :contact_name, :email
      t.timestamps
    end
  end
end
