class JoinActorsMovies < ActiveRecord::Migration
  def up
    create_table :actors_movies do |t|
      t.belongs_to :actors
      t.belongs_to :movies
  end

  def down
  end
end
