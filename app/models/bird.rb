class Bird < ApplicationRecord
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  has_many :sightings
  has_many :locations, through: :sightings
end
