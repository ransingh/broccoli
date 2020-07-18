class CreateExpenseAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_accounts do |t|
      t.string :name, limit: 250
      t.string :uuid
      t.boolean :archived
      t.integer :allocation_cents
      t.string :allocation_currency
      t.integer :balance_cents
      t.string :balance_currency
      t.references :fund, null: true, foreign_key: true
      t.references :recurrence, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :parent_expense_account, null: true

      t.timestamps
    end

    add_foreign_key :expense_accounts, :expense_accounts, column: :parent_expense_account_id
  end
end
