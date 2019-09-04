class CreateAppliances < ActiveRecord::Migration[6.0]
  def change
    create_table :appliances do |t|
      t.string :brand
      t.string :equipment
      t.integer :price
      t.timestamps
    end
  end
end
