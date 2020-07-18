class CreateFunds < ActiveRecord::Migration[6.0]
  def change
    create_table :funds do |t|
      t.string :name, limit: 250
      t.integer :amount_cents
      t.string :amount_currency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
