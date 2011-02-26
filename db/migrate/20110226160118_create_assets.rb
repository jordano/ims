class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :asset_tag
      t.string :serial_number
      t.date :purchase_date
      t.decimal :purchase_cost
      t.integer :warranty_length_year
      t.integer :warranty_length_month

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
