class CreateRecurrences < ActiveRecord::Migration[6.0]
  def change
    create_table :recurrences do |t|
      t.string :name
      t.integer :sequence, default: 0

      t.timestamps
    end
  end
end
