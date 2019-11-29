
class CreateGrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :grooms do |t|
      t.string :name
      t.string :email
      t.date :birth_date
      t.string :sex
      t.string :country
      t.string :district
      t.string :sector
      t.string :cells
      t.string :phone_number

      t.timestamps
    end
  end
end
