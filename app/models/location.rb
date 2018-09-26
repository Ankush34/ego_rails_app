class Location
  include Mongoid::Document
  include Mongoid::Timestamps

  field :pickup_location, type: String
  field :destination_location, type: String
  field :start_location_latitude
  field :end_location_latitude
  field :start_location_longitude
  field :end_location_longitude
  field :latitude, type: String
  field :city, type: String
  field :country, type: String
  field :longitude, type: String
  field :route, type: String
  field :s2_region_id, type: String

  belongs_to :user
end
