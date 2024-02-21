class Genre < ApplicationRecord
  self.table_name  = "genre"
  has_and_belongs_to_many :movies, join_table: 'movie_genres'
end
