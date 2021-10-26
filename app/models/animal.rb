class Animal < ApplicationRecord
    validates :name, :latin_name, :kingdom, presence: true
    validates :name uniqueness: true
    has_many :sightings
end
