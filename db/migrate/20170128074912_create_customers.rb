class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :rel_id
      t.string :name
      t.integer :segment, default: 0
      t.string :country, limit: 2
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
