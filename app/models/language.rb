class Language < ApplicationRecord
  self.table_name  = "language"

  has_and_belongs_to_many :movies, join_table: 'movie_languages'
end
