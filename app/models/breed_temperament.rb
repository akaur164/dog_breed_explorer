class BreedTemperament < ApplicationRecord
  belongs_to :breed
  belongs_to :temperament
end