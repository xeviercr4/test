class ProductionCompany < ApplicationRecord
  self.table_name  = "production_company"

  has_and_belongs_to_many :movies, join_table: 'movie_company'
end
