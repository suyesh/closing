class CreateTotalClosings < ActiveRecord::Migration
  def change
    create_table :total_closings do |t|
      t.integer :Total_sale
      t.integer :Total_pin
      t.integer :Total_creditcard
      t.string :TMZ_Phone
      t.integer :TMZ_Total
      t.string :Sunny_Phone
      t.integer :Sunny_Total
      t.integer :Raj
      t.integer :Bill_paid
      t.integer :Bill_Received
      t.string :Other_paid
      t.integer :Other_amount
      t.integer :Cash_In_Hand

      t.timestamps
    end
  end
end
