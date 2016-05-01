class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :office_type
      t.string :accomodate
      t.string :no_of_seats
      t.string :no_of_additional_rooms
      t.boolean :isfeature
      t.string :location
      t.string :listing_name
      t.string :listing_summary
      t.string :listing_address
      t.string :photo
      t.boolean :isinternet
      t.boolean :iscanteen
      t.boolean :issportsroom
      t.boolean :ismediation
      t.boolean :isparking
      t.boolean :ispowerbackup
      t.boolean :isauditorium

      t.timestamps null: false
    end
  end
end
