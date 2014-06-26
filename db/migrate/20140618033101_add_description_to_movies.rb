class AddDescriptionToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :description, :string
    add_column :movies, :year_released, :integer
  end
end
