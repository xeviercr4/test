class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :budget
      t.string :homepage
      t.string :overview
      t.decimal :popularity
      t.date :release_date
      t.bigint :revenue
      t.integer :runtime
      t.string :movie_status
      t.string :tagline
      t.decimal :vote_average
      t.integer :vote_count

      t.timestamps
    end
  end
end
