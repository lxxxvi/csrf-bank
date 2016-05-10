class CreateTranzactions < ActiveRecord::Migration[5.0]
  def change
    create_table :tranzactions do |t|
      t.references  :user       , null: false, foreign_key: true
      t.integer     :amount     , null: false

      t.timestamps
    end
  end
end
