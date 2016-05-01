json.array!(@rooms) do |room|
  json.extract! room, :id, :office_type, :accomodate, :no_of_seats, :no_of_additional_rooms, :isfeature, :location, :listing_name, :listing_summary, :listing_address, :photo, :isinternet, :iscanteen, :issportsroom, :ismediation, :isparking, :ispowerbackup, :isauditorium
  json.url room_url(room, format: :json)
end
