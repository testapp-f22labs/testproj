class Room < ActiveRecord::Base
  validates :office_type,:photo ,:accomodate ,:no_of_seats ,:no_of_additional_rooms,:listing_name ,:listing_summary ,:listing_address, presence: true
end
