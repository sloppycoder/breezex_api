class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :name
      t.string :email
      t.timestamp :last_access

      t.timestamps
    end
  end
end
