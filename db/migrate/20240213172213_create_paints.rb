class CreatePaints < ActiveRecord::Migration[7.0]
  def change
    create_table :paints do |t|
      t.string :name
      t.string :artist
      t.string :movement
      t.string :technique
      t.text :description
      t.integer :price
      t.integer :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
