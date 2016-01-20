class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country
      t.string :country_code
      t.string :fed_name
      t.string :fed_address
      t.string :fed_city
      t.string :telephone
      t.string :email
      t.string :president
      t.string :website
      t.string :flag

      t.timestamps null: false
    end
  end
end
