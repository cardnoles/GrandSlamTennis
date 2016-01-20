class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.integer :age
      t.string :country
      t.integer :ranking
      t.string :gender
      t.string :tournament
      t.integer :seed
      t.integer :draw_line_number
      t.string :photo
      t.text :notes

      t.timestamps null: false
    end
  end
end
