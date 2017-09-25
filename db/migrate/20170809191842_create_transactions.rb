class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.float :amount
      t.integer :card_number
      t.string :card_name
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
