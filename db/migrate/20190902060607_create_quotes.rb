class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.text :body
      t.timestamps
    end
  end
end
