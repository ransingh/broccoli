class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 50
      t.string :last_name, limit: 50
      t.string :email, limit: 200
      t.string :password_digest
      t.boolean :token_cancelled, default: false
      t.datetime :token_cancelled_at
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
