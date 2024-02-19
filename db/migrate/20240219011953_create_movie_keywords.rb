class CreateMovieKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_keywords do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :keyword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
