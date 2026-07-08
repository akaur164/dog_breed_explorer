class Breed < ApplicationRecord
  belongs_to :group

  has_many :reviews
  has_many :breed_temperaments
  has_many :temperaments, through: :breed_temperaments

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :popularity, numericality: { only_integer: true }, allow_nil: true
end