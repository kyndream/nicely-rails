class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.decimal :amount, precision: 15, scale: 2, default: BigDecimal("0.00")
      t.decimal :goal_amount, precision: 15, scale: 2
      t.date :deadline
      t.boolean :goal_met, default: false

      t.references :user

      t.timestamps
    end
  end
end
