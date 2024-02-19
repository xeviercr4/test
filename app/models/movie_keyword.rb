class MovieKeyword < ApplicationRecord
  self.table_name  = "movie_keywords"
  belongs_to :movie
  belongs_to :keyword
end
