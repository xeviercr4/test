class MovieLanguage < ApplicationRecord
  self.table_name  = "movie_languages"
  belongs_to :movie
  belongs_to :language
  belongs_to :language_role
end
