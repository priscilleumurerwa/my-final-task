class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.integer :category

      t.timestamps
    end
  end
end
