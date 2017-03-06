# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


JobEntry.delete_all

JobEntry.create( {material: "Novajet Art 255gsm", size_width: 20, size_height: 15, units: 'in',
  runs: 1, prints: 1, margin: 1.5, per_print: 17.70, discount: 0.05, price: 16.82,
  originals: 1} )

JobEntry.create( {material: "Ashgrove suilven", size_width: 42, size_height: 12, units: 'in',
    runs: 1, prints: 1, margin: 0, per_print: 0, discount: 0.05, price: 34.20,
    originals: 1} )

Material.delete_all

Material.create( {product_name: "Novajet Art 255gsm", guk_name: "none", roll_width_in: 44, roll_length_m: 30,
      factor: 7, rounded_sale_price: 71, list_price: 240.00, cost_per_sqm: 7.16, ink_per_sqm: 3,
      supplier_discount: 0, sell_per_sqm: 71.11} )

Material.create( {product_name: "Ashgrove suilven", guk_name: "none", roll_width_in: 42, roll_length_m: 12,
        factor: 8.50, rounded_sale_price: 107, list_price: 122.00, cost_per_sqm: 9.53, ink_per_sqm: 3,
        supplier_discount: 0, sell_per_sqm: 106.51 } )

ClientDetail.delete_all

ClientDetail.create( {company_name: 'st helens church', address_1: '115 Great western Rd',
          address_2: 'glasgow', city: 'Glasgow', post_code: 'gh4 2fk',
          telephone_number: '01486-865-245', mobile_number: '07789847319',
          contact_name: 'Henry Davis', email: 'henrymay43245@gmail.com'})

ClientDetail.create( {company_name: 'greyfriars bobby', address_1: '837 John Pauls st',
            address_2: 'Bayfield View', city: 'Inverness', post_code: 'iv77 8ik',
            telephone_number: '01326-215-284', mobile_number: '0787463392',
            contact_name: 'Sir James Watson', email: 'james839283@gmail.com' } )
