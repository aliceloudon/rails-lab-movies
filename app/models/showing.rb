class Showing < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cinema
end
