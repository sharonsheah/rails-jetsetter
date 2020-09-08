class CreateJets < ActiveRecord::Migration[6.0]
  def change
    create_table :jets do |t|
      t.string :name
      t.text :description
      t.string :pilot_name
      t.integer :capacity
      t.string :origin
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
