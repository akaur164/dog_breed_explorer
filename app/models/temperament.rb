class Temperament < ApplicationRecord
  has_many :breed_temperaments
  has_many :breeds, through: :breed_temperaments
end