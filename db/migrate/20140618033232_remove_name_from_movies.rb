class RemoveNameFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :name, :string
  end
end
