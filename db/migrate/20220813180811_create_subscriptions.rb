class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.string :description
      t.string :delivery_cadence
      t.references :customer, null: false, foreign_key: true
      t.references :tea, null: false, foreign_key: true

      t.timestamps
    end
  end
end