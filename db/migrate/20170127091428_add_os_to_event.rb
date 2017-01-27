class AddOsToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :os, :string
  end
end
