class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name, limit: 250
      t.integer :amount_cents
      t.string :amount_currency
      t.references :expense_account, null: false, foreign_key: true
      t.boolean :tax_deductible, default: false

      t.timestamps
    end
  end
end
