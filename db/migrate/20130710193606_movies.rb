class Movies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :plot
      t.string :mpaa_rating
      t.integer :user_rating, :default => 50
    end
  end

  def down
    drop_table :movies
  end
end
