class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      # t.references :transactionable, polymorphic: true, index: true
      t.integer :transactionable_id
      t.string :transactionable_type

      t.string :title
      t.string :notes
      t.decimal :amount, precision: 15, scale: 2
      t.date :due_on
      t.boolean :recur, default: false
      t.integer :recur_type, default: 0

      t.timestamps
    end

    add_index :transactions, [:transactionable_type, :transactionable_id],
      :unique => true, :name => 'transaction_index'
  end
end
