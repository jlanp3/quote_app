class CreateQuoteAppliances < ActiveRecord::Migration[6.0]
  def change
    create_table :quote_appliances do |t|
      t.integer :quote_id
      t.integer :appliance_id
      t.timestamps
    end
  end
end
