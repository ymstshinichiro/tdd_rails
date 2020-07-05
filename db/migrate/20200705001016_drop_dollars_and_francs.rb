class DropDollarsAndFrancs < ActiveRecord::Migration[6.0]
  def change
    drop_table :dollars do |t|
      t.integer :amount
      t.timestamps null: false
    end

    drop_table :francs do |t|
      t.integer :amount
      t.timestamps null: false
    end
  end
end
