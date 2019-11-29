class CreateCouples < ActiveRecord::Migration[6.0]
  def change
    create_table :couples do |t|
      t.integer :category
      t.references :groom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
