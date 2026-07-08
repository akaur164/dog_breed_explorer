class Breed < ApplicationRecord
  belongs_to :group
end
class Breed < ApplicationRecord
  belongs_to :group

  has_many :reviews
  has_many :breed_temperaments
  has_many :temperaments, through: :breed_temperaments
end