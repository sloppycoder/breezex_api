class CreateDeviceRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :device_registrations do |t|
      t.belongs_to :user, index: true
      t.string :device_uuid
      t.boolean :notified
      t.timestamp :received

      t.timestamps
    end
  end
end
