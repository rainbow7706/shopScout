class CreateUserDevices < ActiveRecord::Migration
  def change
    create_table :user_devices do |t|
      t.string :device_type
      t.string :device_id

      t.timestamps null: false
    end
  end
end
