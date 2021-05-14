class Location < ApplicationRecord
    include FastJsonapi::ObjectSerializer
    attributes :created_at
    has_many :sightings
    has_many :birds, through: :sightings
end