class CreateShoesales < ActiveRecord::Migration
  def change
    create_table :shoesales do |t|
      t.references :shoe, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :seller

      t.timestamps null: false
    end
  end
end
