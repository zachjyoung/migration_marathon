class Removefavorites < ActiveRecord::Migration
  def change
    remove_column :books, :favorites, :boolean
  end
end
