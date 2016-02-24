class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :product
      t.references :user, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
