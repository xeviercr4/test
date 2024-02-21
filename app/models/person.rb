class Person < ApplicationRecord
  self.table_name  = "person"
  has_and_belongs_to_many :movies, join_table: 'movie_casts'
end
