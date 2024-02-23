class Movie < ApplicationRecord
  self.table_name  = "movie"
  has_many :movie_genres
  has_many :movie_languages
  has_many :movie_casts
  has_many :movie_companies
  has_and_belongs_to_many :genres, join_table: 'movie_genres'
  has_and_belongs_to_many :languages, join_table: 'movie_languages'
  has_and_belongs_to_many :persons, join_table: 'movie_casts'
  has_and_belongs_to_many :production_companies, join_table: 'movie_company'
end
