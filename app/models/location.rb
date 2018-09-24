class Location
  include Mongoid::Document
  include Mongoid::Timestamps

  field :start_location_latitude
  field :end_location_latitude
  field :start_location_longitude
  field :end_location_longitude
  field :latitude, type: String
  field :city, type: String
  field :country, type: String
  field :longitude, type: String

  validates :latitude, presence: true
  validates :longitude, presence: true
  
  belongs_to :vehicle
end
