class UpdateArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_index :artworks, column: [:artist_id, :title]
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
