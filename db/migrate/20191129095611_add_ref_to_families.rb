class AddRefToFamilies < ActiveRecord::Migration[6.0]
  def change
    add_reference :familles, :groom, null: false, foreign_key: true
  end
end
