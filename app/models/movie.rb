class Movie < ActiveRecord::Base
  has_many :actors
  has_many :showings
  has_many :cinemas, { through: :showings }
end
