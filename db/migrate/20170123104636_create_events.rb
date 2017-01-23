class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :token
      t.string :service_type, default: 'APN'
      t.boolean :sent, default: false
      t.integer :attempts, default: 0

      t.timestamps
    end
  end
end
