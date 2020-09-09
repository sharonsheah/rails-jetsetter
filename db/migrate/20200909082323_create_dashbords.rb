class CreateDashbords < ActiveRecord::Migration[6.0]
  def change
    create_table :dashbords do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
