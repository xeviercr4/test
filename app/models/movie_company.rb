class MovieCompany < ApplicationRecord
  self.table_name  = "movie_company"
  belongs_to :movie
  belongs_to :company
end
