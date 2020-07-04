class CreateDollars < ActiveRecord::Migration[6.0]
  def change
    create_table :dollars do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
