class Review < ActiveRecord::Base
  belongs_to :movie
  validates :description, presence: true
  validates_inclusion_of :stars, in: 1..5, message: "Please, give a rating"
  validates :movie, presence: true
end
