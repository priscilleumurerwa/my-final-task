class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :couple, null: false, foreign_key: true
    end
  end
end
