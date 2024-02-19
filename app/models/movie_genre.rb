class MovieGenre < ApplicationRecord
  self.table_name  = "movie_genres"
  belongs_to :movie
  belongs_to :genre
end
