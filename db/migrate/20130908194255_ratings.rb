class Ratings < ActiveRecord::Migration
  def up
    add_column :books, :rating, :integer
  end

  def down
    add_column :books, :rating, :integer
  end
end
