class Movie < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :title, :director, :year, :duration, presence: true
  validates :year, :duration, numericality: { only_integer: true }
end
