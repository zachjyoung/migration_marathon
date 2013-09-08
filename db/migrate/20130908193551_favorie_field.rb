class FavorieField < ActiveRecord::Migration
  def up
    add_column :books, :favorites, :boolean
  end
  def down
    remove_column :books, :favorites, :boolean
  end
end
