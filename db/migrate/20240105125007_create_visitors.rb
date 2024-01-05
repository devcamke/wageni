class CreateVisitors < ActiveRecord::Migration[7.1]
  def change
    create_table :visitors do |t|
      t.string :full_name
      t.integer :phone_number
      t.string :residential_address
      t.string :gender
      t.text :comment

      t.timestamps
    end
  end
end
