class Vehicle
  include Mongoid::Document
  include Mongoid::Timestamps
  include ArrayBlankRejectable

  field :number, type: String, default: ""
  field :registration_number, type: String, default: ""
  field :city, type: String, default: ""
  field :state, type: String, default: ""
  field :pubsub_channel, type: String, default: ""
  field :vehicle_type, type: String, default: ""

  validates :number, :registration_number, :city, :state, :vehicle_type, presence: true
  validates :number, uniqueness: true
  validates :registration_number, uniqueness: true

  has_one :location
  belongs_to :user
  accepts_nested_attributes_for :location
end